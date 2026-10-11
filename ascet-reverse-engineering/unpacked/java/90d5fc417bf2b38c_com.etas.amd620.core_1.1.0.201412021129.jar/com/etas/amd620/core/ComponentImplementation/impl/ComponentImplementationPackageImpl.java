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
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.impl.ComponentDataPackageImpl;
import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import com.etas.amd620.core.ComponentImplementation.ColorT;
import com.etas.amd620.core.ComponentImplementation.ComplexImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComplexReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationFactory;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationType;
import com.etas.amd620.core.ComponentImplementation.DimensionalImplementationT;
import com.etas.amd620.core.ComponentImplementation.DimensionalReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.DistributionImplementationType;
import com.etas.amd620.core.ComponentImplementation.DocumentRoot;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationT;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationType;
import com.etas.amd620.core.ComponentImplementation.FileReferenceT;
import com.etas.amd620.core.ComponentImplementation.FormattedTextT;
import com.etas.amd620.core.ComponentImplementation.GenericDataT;
import com.etas.amd620.core.ComponentImplementation.IconT;
import com.etas.amd620.core.ComponentImplementation.ImplementationCastImplementationType;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentImplementation.ImplementationSetT;
import com.etas.amd620.core.ComponentImplementation.ImplementationSetType;
import com.etas.amd620.core.ComponentImplementation.ImplementationVariantT;
import com.etas.amd620.core.ComponentImplementation.IntervalT;
import com.etas.amd620.core.ComponentImplementation.ItemRefT;
import com.etas.amd620.core.ComponentImplementation.LimitOverflowType;
import com.etas.amd620.core.ComponentImplementation.LogicImplementationT;
import com.etas.amd620.core.ComponentImplementation.MasterType;
import com.etas.amd620.core.ComponentImplementation.MethodImplementationT;
import com.etas.amd620.core.ComponentImplementation.NoteType;
import com.etas.amd620.core.ComponentImplementation.NotesT;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationBaseT;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationT;
import com.etas.amd620.core.ComponentImplementation.OneDImplementationType;
import com.etas.amd620.core.ComponentImplementation.OptionT;
import com.etas.amd620.core.ComponentImplementation.PointT;
import com.etas.amd620.core.ComponentImplementation.PrimitiveImplementationT;
import com.etas.amd620.core.ComponentImplementation.ResourceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ResourceImplementationType;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentImplementation.SizeT;
import com.etas.amd620.core.ComponentImplementation.TemplateImplementationT;
import com.etas.amd620.core.ComponentImplementation.TimeStampT;
import com.etas.amd620.core.ComponentImplementation.TwoDImplementationType;
import com.etas.amd620.core.ComponentImplementation.TypeType;
import com.etas.amd620.core.ComponentImplementation.ViewType;
import com.etas.amd620.core.ComponentImplementation.util.ComponentImplementationValidator;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.impl.ComponentMainPackageImpl;
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

public class ComponentImplementationPackageImpl
extends EPackageImpl
implements ComponentImplementationPackage {
    private EClass colorTEClass = null;
    private EClass complexImplementationTEClass = null;
    private EClass complexReferenceImplementationTEClass = null;
    private EClass componentImplementationTypeEClass = null;
    private EClass dimensionalImplementationTEClass = null;
    private EClass dimensionalReferenceImplementationTEClass = null;
    private EClass distributionImplementationTypeEClass = null;
    private EClass documentRootEClass = null;
    private EClass elementImplementationTEClass = null;
    private EClass elementImplementationTypeEClass = null;
    private EClass fileReferenceTEClass = null;
    private EClass formattedTextTEClass = null;
    private EClass genericDataTEClass = null;
    private EClass iconTEClass = null;
    private EClass implementationCastImplementationTypeEClass = null;
    private EClass implementationEntryTEClass = null;
    private EClass implementationSetTEClass = null;
    private EClass implementationSetTypeEClass = null;
    private EClass implementationVariantTEClass = null;
    private EClass intervalTEClass = null;
    private EClass itemRefTEClass = null;
    private EClass logicImplementationTEClass = null;
    private EClass methodImplementationTEClass = null;
    private EClass notesTEClass = null;
    private EClass noteTypeEClass = null;
    private EClass numericImplementationBaseTEClass = null;
    private EClass numericImplementationTEClass = null;
    private EClass oneDImplementationTypeEClass = null;
    private EClass optionTEClass = null;
    private EClass pointTEClass = null;
    private EClass primitiveImplementationTEClass = null;
    private EClass resourceImplementationTEClass = null;
    private EClass resourceImplementationTypeEClass = null;
    private EClass scalarImplementationTEClass = null;
    private EClass sizeTEClass = null;
    private EClass templateImplementationTEClass = null;
    private EClass timeStampTEClass = null;
    private EClass twoDImplementationTypeEClass = null;
    private EClass viewTypeEClass = null;
    private EEnum cacheLockingTypeEEnum = null;
    private EEnum limitOverflowTypeEEnum = null;
    private EEnum masterTypeEEnum = null;
    private EEnum typeTypeEEnum = null;
    private EDataType cacheLockingTypeObjectEDataType = null;
    private EDataType limitOverflowTypeObjectEDataType = null;
    private EDataType masterTypeObjectEDataType = null;
    private EDataType numberOrFractionEDataType = null;
    private EDataType numberOrFractionMember1EDataType = null;
    private EDataType nzqrEDataType = null;
    private EDataType nzqrMember2EDataType = null;
    private EDataType oidEDataType = null;
    private EDataType typeTypeObjectEDataType = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ComponentImplementationPackageImpl() {
        super("http://www.etas.com/ascet/amd/620/component_implementation", (EFactory)ComponentImplementationFactory.eINSTANCE);
    }

    public static ComponentImplementationPackage init() {
        if (isInited) {
            return (ComponentImplementationPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation");
        }
        ComponentImplementationPackageImpl theComponentImplementationPackage = (ComponentImplementationPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/component_implementation") instanceof ComponentImplementationPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/component_implementation") : new ComponentImplementationPackageImpl());
        isInited = true;
        XMLTypePackage.eINSTANCE.eClass();
        Amd620PackageImpl theAmd620Package = (Amd620PackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") instanceof Amd620PackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") : Amd620Package.eINSTANCE);
        ComponentMainPackageImpl theComponentMainPackage = (ComponentMainPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") instanceof ComponentMainPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") : ComponentMainPackage.eINSTANCE);
        ComponentDataPackageImpl theComponentDataPackage = (ComponentDataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") instanceof ComponentDataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") : ComponentDataPackage.eINSTANCE);
        ComponentSpecificationPackageImpl theComponentSpecificationPackage = (ComponentSpecificationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") instanceof ComponentSpecificationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") : ComponentSpecificationPackage.eINSTANCE);
        ComponentProjectPackageImpl theComponentProjectPackage = (ComponentProjectPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project") instanceof ComponentProjectPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project") : ComponentProjectPackage.eINSTANCE);
        ImplementationtypesPackageImpl theImplementationtypesPackage = (ImplementationtypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") instanceof ImplementationtypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") : ImplementationtypesPackage.eINSTANCE);
        FormulasPackageImpl theFormulasPackage = (FormulasPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas") instanceof FormulasPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas") : FormulasPackage.eINSTANCE);
        XmldsigPackageImpl theXmldsigPackage = (XmldsigPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#") instanceof XmldsigPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#") : XmldsigPackage.eINSTANCE);
        theComponentSpecificationPackage.loadPackage();
        theComponentImplementationPackage.createPackageContents();
        theAmd620Package.createPackageContents();
        theComponentMainPackage.createPackageContents();
        theComponentDataPackage.createPackageContents();
        theComponentProjectPackage.createPackageContents();
        theImplementationtypesPackage.createPackageContents();
        theFormulasPackage.createPackageContents();
        theXmldsigPackage.createPackageContents();
        theComponentImplementationPackage.initializePackageContents();
        theAmd620Package.initializePackageContents();
        theComponentMainPackage.initializePackageContents();
        theComponentDataPackage.initializePackageContents();
        theComponentProjectPackage.initializePackageContents();
        theImplementationtypesPackage.initializePackageContents();
        theFormulasPackage.initializePackageContents();
        theXmldsigPackage.initializePackageContents();
        theComponentSpecificationPackage.fixPackageContents();
        EValidator.Registry.INSTANCE.put((Object)theComponentImplementationPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return ComponentImplementationValidator.INSTANCE;
            }
        });
        theComponentImplementationPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://www.etas.com/ascet/amd/620/component_implementation", (Object)theComponentImplementationPackage);
        return theComponentImplementationPackage;
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
    public EClass getComplexImplementationT() {
        return this.complexImplementationTEClass;
    }

    @Override
    public EAttribute getComplexImplementationT_Checksum() {
        return (EAttribute)this.complexImplementationTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getComplexImplementationT_ImplementationName() {
        return (EAttribute)this.complexImplementationTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getComplexImplementationT_ImplementationOID() {
        return (EAttribute)this.complexImplementationTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getComplexImplementationT_MemoryLocationInstance() {
        return (EAttribute)this.complexImplementationTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getComplexImplementationT_Policy() {
        return (EAttribute)this.complexImplementationTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getComplexImplementationT_RescalingFormula() {
        return (EAttribute)this.complexImplementationTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getComplexReferenceImplementationT() {
        return this.complexReferenceImplementationTEClass;
    }

    @Override
    public EAttribute getComplexReferenceImplementationT_CacheLocking() {
        return (EAttribute)this.complexReferenceImplementationTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getComplexReferenceImplementationT_MemoryLocationReference() {
        return (EAttribute)this.complexReferenceImplementationTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getComponentImplementationType() {
        return this.componentImplementationTypeEClass;
    }

    @Override
    public EReference getComponentImplementationType_ImplementationSet() {
        return (EReference)this.componentImplementationTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getComponentImplementationType_Signature() {
        return (EReference)this.componentImplementationTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getComponentImplementationType_SchemaVersion() {
        return (EAttribute)this.componentImplementationTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getComponentImplementationType_ToolVersion() {
        return (EAttribute)this.componentImplementationTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getDimensionalImplementationT() {
        return this.dimensionalImplementationTEClass;
    }

    @Override
    public EReference getDimensionalImplementationT_OneDImplementation() {
        return (EReference)this.dimensionalImplementationTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getDimensionalImplementationT_TwoDImplementation() {
        return (EReference)this.dimensionalImplementationTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getDimensionalImplementationT_DistributionImplementation() {
        return (EReference)this.dimensionalImplementationTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getDimensionalImplementationT_ArrayImplementation() {
        return (EReference)this.dimensionalImplementationTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getDimensionalImplementationT_MatrixImplementation() {
        return (EReference)this.dimensionalImplementationTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getDimensionalReferenceImplementationT() {
        return this.dimensionalReferenceImplementationTEClass;
    }

    @Override
    public EAttribute getDimensionalReferenceImplementationT_MemoryLocationReference() {
        return (EAttribute)this.dimensionalReferenceImplementationTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getDistributionImplementationType() {
        return this.distributionImplementationTypeEClass;
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
    public EReference getDocumentRoot_ComponentImplementation() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getElementImplementationT() {
        return this.elementImplementationTEClass;
    }

    @Override
    public EReference getElementImplementationT_ScalarImplementation() {
        return (EReference)this.elementImplementationTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getElementImplementationT_DimensionalImplementation() {
        return (EReference)this.elementImplementationTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getElementImplementationT_ComplexImplementation() {
        return (EReference)this.elementImplementationTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getElementImplementationT_DimensionalReferenceImplementation() {
        return (EReference)this.elementImplementationTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getElementImplementationT_ComplexReferenceImplementation() {
        return (EReference)this.elementImplementationTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getElementImplementationT_AsReference() {
        return (EAttribute)this.elementImplementationTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getElementImplementationT_ElementName() {
        return (EAttribute)this.elementImplementationTEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getElementImplementationT_ElementOID() {
        return (EAttribute)this.elementImplementationTEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getElementImplementationT_Index() {
        return (EAttribute)this.elementImplementationTEClass.getEStructuralFeatures().get(8);
    }

    @Override
    public EAttribute getElementImplementationT_MethodName() {
        return (EAttribute)this.elementImplementationTEClass.getEStructuralFeatures().get(9);
    }

    @Override
    public EClass getElementImplementationType() {
        return this.elementImplementationTypeEClass;
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
    public EClass getFormattedTextT() {
        return this.formattedTextTEClass;
    }

    @Override
    public EAttribute getFormattedTextT_Value() {
        return (EAttribute)this.formattedTextTEClass.getEStructuralFeatures().get(0);
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
    public EClass getImplementationCastImplementationType() {
        return this.implementationCastImplementationTypeEClass;
    }

    @Override
    public EAttribute getImplementationCastImplementationType_IgnoreImplementationCast() {
        return (EAttribute)this.implementationCastImplementationTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getImplementationEntryT() {
        return this.implementationEntryTEClass;
    }

    @Override
    public EReference getImplementationEntryT_ImplementationVariant() {
        return (EReference)this.implementationEntryTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getImplementationEntryT_CustomerData() {
        return (EReference)this.implementationEntryTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getImplementationEntryT_Ignore() {
        return (EAttribute)this.implementationEntryTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getImplementationSetT() {
        return this.implementationSetTEClass;
    }

    @Override
    public EReference getImplementationSetT_TimeStamp() {
        return (EReference)this.implementationSetTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getImplementationSetT_Notes() {
        return (EReference)this.implementationSetTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getImplementationSetT_CustomerData() {
        return (EReference)this.implementationSetTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getImplementationSetT_CacheLocking() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getImplementationSetT_Checksum() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getImplementationSetT_ClassConfig() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getImplementationSetT_Default() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getImplementationSetT_GenerateDataStructures() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getImplementationSetT_GenerateMethodBody() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(8);
    }

    @Override
    public EAttribute getImplementationSetT_HierarchicalGenerationForSM() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(9);
    }

    @Override
    public EAttribute getImplementationSetT_InlinePrivateMethodsSM() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(10);
    }

    @Override
    public EAttribute getImplementationSetT_IsService() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(11);
    }

    @Override
    public EAttribute getImplementationSetT_MemoryLocation() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(12);
    }

    @Override
    public EAttribute getImplementationSetT_Name() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(13);
    }

    @Override
    public EAttribute getImplementationSetT_OID() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(14);
    }

    @Override
    public EAttribute getImplementationSetT_OptimizeMethodCalls() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(15);
    }

    @Override
    public EAttribute getImplementationSetT_OutlineMethodsSM() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(16);
    }

    @Override
    public EAttribute getImplementationSetT_PackageName() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(17);
    }

    @Override
    public EAttribute getImplementationSetT_UserDefinedOrder() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(18);
    }

    @Override
    public EAttribute getImplementationSetT_UsingServiceRoutines() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(19);
    }

    @Override
    public EAttribute getImplementationSetT_UUID() {
        return (EAttribute)this.implementationSetTEClass.getEStructuralFeatures().get(20);
    }

    @Override
    public EClass getImplementationSetType() {
        return this.implementationSetTypeEClass;
    }

    @Override
    public EReference getImplementationSetType_ImplementationEntry() {
        return (EReference)this.implementationSetTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getImplementationVariantT() {
        return this.implementationVariantTEClass;
    }

    @Override
    public EReference getImplementationVariantT_ElementImplementation() {
        return (EReference)this.implementationVariantTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getImplementationVariantT_MethodImplementation() {
        return (EReference)this.implementationVariantTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getImplementationVariantT_Name() {
        return (EAttribute)this.implementationVariantTEClass.getEStructuralFeatures().get(2);
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
    public EClass getLogicImplementationT() {
        return this.logicImplementationTEClass;
    }

    @Override
    public EAttribute getLogicImplementationT_ImplType() {
        return (EAttribute)this.logicImplementationTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getLogicImplementationT_PhysType() {
        return (EAttribute)this.logicImplementationTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getMethodImplementationT() {
        return this.methodImplementationTEClass;
    }

    @Override
    public EAttribute getMethodImplementationT_CacheLocking() {
        return (EAttribute)this.methodImplementationTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getMethodImplementationT_Inline() {
        return (EAttribute)this.methodImplementationTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getMethodImplementationT_MemoryLocation() {
        return (EAttribute)this.methodImplementationTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getMethodImplementationT_MethodName() {
        return (EAttribute)this.methodImplementationTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getMethodImplementationT_MethodOID() {
        return (EAttribute)this.methodImplementationTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getMethodImplementationT_Symbol() {
        return (EAttribute)this.methodImplementationTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getMethodImplementationT_UseFPU() {
        return (EAttribute)this.methodImplementationTEClass.getEStructuralFeatures().get(6);
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
    public EClass getNumericImplementationBaseT() {
        return this.numericImplementationBaseTEClass;
    }

    @Override
    public EAttribute getNumericImplementationBaseT_IsLimitOverflow() {
        return (EAttribute)this.numericImplementationBaseTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getNumericImplementationBaseT_LimitAssignments() {
        return (EAttribute)this.numericImplementationBaseTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getNumericImplementationBaseT_LimitOverflow() {
        return (EAttribute)this.numericImplementationBaseTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getNumericImplementationT() {
        return this.numericImplementationTEClass;
    }

    @Override
    public EReference getNumericImplementationT_PhysicalInterval() {
        return (EReference)this.numericImplementationTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getNumericImplementationT_ImplementationInterval() {
        return (EReference)this.numericImplementationTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getNumericImplementationT_Formula() {
        return (EAttribute)this.numericImplementationTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getNumericImplementationT_ImplType() {
        return (EAttribute)this.numericImplementationTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getNumericImplementationT_Master() {
        return (EAttribute)this.numericImplementationTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getNumericImplementationT_PhysType() {
        return (EAttribute)this.numericImplementationTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getNumericImplementationT_Quantization() {
        return (EAttribute)this.numericImplementationTEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getNumericImplementationT_ZeroNotIncluded() {
        return (EAttribute)this.numericImplementationTEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EClass getOneDImplementationType() {
        return this.oneDImplementationTypeEClass;
    }

    @Override
    public EReference getOneDImplementationType_XAxis() {
        return (EReference)this.oneDImplementationTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getOneDImplementationType_TableValues() {
        return (EReference)this.oneDImplementationTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getOneDImplementationType_Name() {
        return (EAttribute)this.oneDImplementationTypeEClass.getEStructuralFeatures().get(2);
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
    public EClass getPrimitiveImplementationT() {
        return this.primitiveImplementationTEClass;
    }

    @Override
    public EAttribute getPrimitiveImplementationT_AdditionalInformation() {
        return (EAttribute)this.primitiveImplementationTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getPrimitiveImplementationT_CacheLocking() {
        return (EAttribute)this.primitiveImplementationTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getPrimitiveImplementationT_MemoryLocationInstance() {
        return (EAttribute)this.primitiveImplementationTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getPrimitiveImplementationT_MemoryLocationSearchResult() {
        return (EAttribute)this.primitiveImplementationTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getPrimitiveImplementationT_Name() {
        return (EAttribute)this.primitiveImplementationTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getPrimitiveImplementationT_Policy() {
        return (EAttribute)this.primitiveImplementationTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getPrimitiveImplementationT_Rescaled() {
        return (EAttribute)this.primitiveImplementationTEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EClass getResourceImplementationT() {
        return this.resourceImplementationTEClass;
    }

    @Override
    public EClass getResourceImplementationType() {
        return this.resourceImplementationTypeEClass;
    }

    @Override
    public EClass getScalarImplementationT() {
        return this.scalarImplementationTEClass;
    }

    @Override
    public EReference getScalarImplementationT_EnumerationImplementation() {
        return (EReference)this.scalarImplementationTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getScalarImplementationT_NumericImplementation() {
        return (EReference)this.scalarImplementationTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getScalarImplementationT_LogicImplementation() {
        return (EReference)this.scalarImplementationTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getScalarImplementationT_TemplateImplementation() {
        return (EReference)this.scalarImplementationTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getScalarImplementationT_ResourceImplementation() {
        return (EReference)this.scalarImplementationTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EReference getScalarImplementationT_ImplementationCastImplementation() {
        return (EReference)this.scalarImplementationTEClass.getEStructuralFeatures().get(5);
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
    public EClass getTemplateImplementationT() {
        return this.templateImplementationTEClass;
    }

    @Override
    public EAttribute getTemplateImplementationT_IgnoreImplementationCast() {
        return (EAttribute)this.templateImplementationTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTemplateImplementationT_RefersTo() {
        return (EAttribute)this.templateImplementationTEClass.getEStructuralFeatures().get(1);
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
    public EClass getTwoDImplementationType() {
        return this.twoDImplementationTypeEClass;
    }

    @Override
    public EReference getTwoDImplementationType_XAxis() {
        return (EReference)this.twoDImplementationTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getTwoDImplementationType_YAxis() {
        return (EReference)this.twoDImplementationTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getTwoDImplementationType_TableValues() {
        return (EReference)this.twoDImplementationTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getTwoDImplementationType_Name() {
        return (EAttribute)this.twoDImplementationTypeEClass.getEStructuralFeatures().get(3);
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
    public EEnum getCacheLockingType() {
        return this.cacheLockingTypeEEnum;
    }

    @Override
    public EEnum getLimitOverflowType() {
        return this.limitOverflowTypeEEnum;
    }

    @Override
    public EEnum getMasterType() {
        return this.masterTypeEEnum;
    }

    @Override
    public EEnum getTypeType() {
        return this.typeTypeEEnum;
    }

    @Override
    public EDataType getCacheLockingTypeObject() {
        return this.cacheLockingTypeObjectEDataType;
    }

    @Override
    public EDataType getLimitOverflowTypeObject() {
        return this.limitOverflowTypeObjectEDataType;
    }

    @Override
    public EDataType getMasterTypeObject() {
        return this.masterTypeObjectEDataType;
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
    public EDataType getTypeTypeObject() {
        return this.typeTypeObjectEDataType;
    }

    @Override
    public ComponentImplementationFactory getComponentImplementationFactory() {
        return (ComponentImplementationFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.colorTEClass = this.createEClass(0);
        this.createEAttribute(this.colorTEClass, 0);
        this.createEAttribute(this.colorTEClass, 1);
        this.createEAttribute(this.colorTEClass, 2);
        this.complexImplementationTEClass = this.createEClass(1);
        this.createEAttribute(this.complexImplementationTEClass, 0);
        this.createEAttribute(this.complexImplementationTEClass, 1);
        this.createEAttribute(this.complexImplementationTEClass, 2);
        this.createEAttribute(this.complexImplementationTEClass, 3);
        this.createEAttribute(this.complexImplementationTEClass, 4);
        this.createEAttribute(this.complexImplementationTEClass, 5);
        this.complexReferenceImplementationTEClass = this.createEClass(2);
        this.createEAttribute(this.complexReferenceImplementationTEClass, 6);
        this.createEAttribute(this.complexReferenceImplementationTEClass, 7);
        this.componentImplementationTypeEClass = this.createEClass(3);
        this.createEReference(this.componentImplementationTypeEClass, 0);
        this.createEReference(this.componentImplementationTypeEClass, 1);
        this.createEAttribute(this.componentImplementationTypeEClass, 2);
        this.createEAttribute(this.componentImplementationTypeEClass, 3);
        this.dimensionalImplementationTEClass = this.createEClass(4);
        this.createEReference(this.dimensionalImplementationTEClass, 0);
        this.createEReference(this.dimensionalImplementationTEClass, 1);
        this.createEReference(this.dimensionalImplementationTEClass, 2);
        this.createEReference(this.dimensionalImplementationTEClass, 3);
        this.createEReference(this.dimensionalImplementationTEClass, 4);
        this.dimensionalReferenceImplementationTEClass = this.createEClass(5);
        this.createEAttribute(this.dimensionalReferenceImplementationTEClass, 5);
        this.distributionImplementationTypeEClass = this.createEClass(6);
        this.documentRootEClass = this.createEClass(7);
        this.createEAttribute(this.documentRootEClass, 0);
        this.createEReference(this.documentRootEClass, 1);
        this.createEReference(this.documentRootEClass, 2);
        this.createEReference(this.documentRootEClass, 3);
        this.elementImplementationTEClass = this.createEClass(8);
        this.createEReference(this.elementImplementationTEClass, 0);
        this.createEReference(this.elementImplementationTEClass, 1);
        this.createEReference(this.elementImplementationTEClass, 2);
        this.createEReference(this.elementImplementationTEClass, 3);
        this.createEReference(this.elementImplementationTEClass, 4);
        this.createEAttribute(this.elementImplementationTEClass, 5);
        this.createEAttribute(this.elementImplementationTEClass, 6);
        this.createEAttribute(this.elementImplementationTEClass, 7);
        this.createEAttribute(this.elementImplementationTEClass, 8);
        this.createEAttribute(this.elementImplementationTEClass, 9);
        this.elementImplementationTypeEClass = this.createEClass(9);
        this.fileReferenceTEClass = this.createEClass(10);
        this.createEAttribute(this.fileReferenceTEClass, 0);
        this.createEAttribute(this.fileReferenceTEClass, 1);
        this.createEAttribute(this.fileReferenceTEClass, 2);
        this.formattedTextTEClass = this.createEClass(11);
        this.createEAttribute(this.formattedTextTEClass, 0);
        this.genericDataTEClass = this.createEClass(12);
        this.createEAttribute(this.genericDataTEClass, 0);
        this.createEAttribute(this.genericDataTEClass, 1);
        this.iconTEClass = this.createEClass(13);
        this.createEReference(this.iconTEClass, 0);
        this.createEReference(this.iconTEClass, 1);
        this.createEAttribute(this.iconTEClass, 2);
        this.createEAttribute(this.iconTEClass, 3);
        this.implementationCastImplementationTypeEClass = this.createEClass(14);
        this.createEAttribute(this.implementationCastImplementationTypeEClass, 18);
        this.implementationEntryTEClass = this.createEClass(15);
        this.createEReference(this.implementationEntryTEClass, 0);
        this.createEReference(this.implementationEntryTEClass, 1);
        this.createEAttribute(this.implementationEntryTEClass, 2);
        this.implementationSetTEClass = this.createEClass(16);
        this.createEReference(this.implementationSetTEClass, 0);
        this.createEReference(this.implementationSetTEClass, 1);
        this.createEReference(this.implementationSetTEClass, 2);
        this.createEAttribute(this.implementationSetTEClass, 3);
        this.createEAttribute(this.implementationSetTEClass, 4);
        this.createEAttribute(this.implementationSetTEClass, 5);
        this.createEAttribute(this.implementationSetTEClass, 6);
        this.createEAttribute(this.implementationSetTEClass, 7);
        this.createEAttribute(this.implementationSetTEClass, 8);
        this.createEAttribute(this.implementationSetTEClass, 9);
        this.createEAttribute(this.implementationSetTEClass, 10);
        this.createEAttribute(this.implementationSetTEClass, 11);
        this.createEAttribute(this.implementationSetTEClass, 12);
        this.createEAttribute(this.implementationSetTEClass, 13);
        this.createEAttribute(this.implementationSetTEClass, 14);
        this.createEAttribute(this.implementationSetTEClass, 15);
        this.createEAttribute(this.implementationSetTEClass, 16);
        this.createEAttribute(this.implementationSetTEClass, 17);
        this.createEAttribute(this.implementationSetTEClass, 18);
        this.createEAttribute(this.implementationSetTEClass, 19);
        this.createEAttribute(this.implementationSetTEClass, 20);
        this.implementationSetTypeEClass = this.createEClass(17);
        this.createEReference(this.implementationSetTypeEClass, 21);
        this.implementationVariantTEClass = this.createEClass(18);
        this.createEReference(this.implementationVariantTEClass, 0);
        this.createEReference(this.implementationVariantTEClass, 1);
        this.createEAttribute(this.implementationVariantTEClass, 2);
        this.intervalTEClass = this.createEClass(19);
        this.createEAttribute(this.intervalTEClass, 0);
        this.createEAttribute(this.intervalTEClass, 1);
        this.itemRefTEClass = this.createEClass(20);
        this.createEAttribute(this.itemRefTEClass, 0);
        this.createEAttribute(this.itemRefTEClass, 1);
        this.logicImplementationTEClass = this.createEClass(21);
        this.createEAttribute(this.logicImplementationTEClass, 7);
        this.createEAttribute(this.logicImplementationTEClass, 8);
        this.methodImplementationTEClass = this.createEClass(22);
        this.createEAttribute(this.methodImplementationTEClass, 0);
        this.createEAttribute(this.methodImplementationTEClass, 1);
        this.createEAttribute(this.methodImplementationTEClass, 2);
        this.createEAttribute(this.methodImplementationTEClass, 3);
        this.createEAttribute(this.methodImplementationTEClass, 4);
        this.createEAttribute(this.methodImplementationTEClass, 5);
        this.createEAttribute(this.methodImplementationTEClass, 6);
        this.notesTEClass = this.createEClass(23);
        this.createEReference(this.notesTEClass, 0);
        this.noteTypeEClass = this.createEClass(24);
        this.createEReference(this.noteTypeEClass, 0);
        this.createEReference(this.noteTypeEClass, 1);
        this.createEAttribute(this.noteTypeEClass, 2);
        this.numericImplementationBaseTEClass = this.createEClass(25);
        this.createEAttribute(this.numericImplementationBaseTEClass, 7);
        this.createEAttribute(this.numericImplementationBaseTEClass, 8);
        this.createEAttribute(this.numericImplementationBaseTEClass, 9);
        this.numericImplementationTEClass = this.createEClass(26);
        this.createEReference(this.numericImplementationTEClass, 10);
        this.createEReference(this.numericImplementationTEClass, 11);
        this.createEAttribute(this.numericImplementationTEClass, 12);
        this.createEAttribute(this.numericImplementationTEClass, 13);
        this.createEAttribute(this.numericImplementationTEClass, 14);
        this.createEAttribute(this.numericImplementationTEClass, 15);
        this.createEAttribute(this.numericImplementationTEClass, 16);
        this.createEAttribute(this.numericImplementationTEClass, 17);
        this.oneDImplementationTypeEClass = this.createEClass(27);
        this.createEReference(this.oneDImplementationTypeEClass, 0);
        this.createEReference(this.oneDImplementationTypeEClass, 1);
        this.createEAttribute(this.oneDImplementationTypeEClass, 2);
        this.optionTEClass = this.createEClass(28);
        this.createEAttribute(this.optionTEClass, 0);
        this.createEAttribute(this.optionTEClass, 1);
        this.createEAttribute(this.optionTEClass, 2);
        this.pointTEClass = this.createEClass(29);
        this.createEAttribute(this.pointTEClass, 0);
        this.createEAttribute(this.pointTEClass, 1);
        this.primitiveImplementationTEClass = this.createEClass(30);
        this.createEAttribute(this.primitiveImplementationTEClass, 0);
        this.createEAttribute(this.primitiveImplementationTEClass, 1);
        this.createEAttribute(this.primitiveImplementationTEClass, 2);
        this.createEAttribute(this.primitiveImplementationTEClass, 3);
        this.createEAttribute(this.primitiveImplementationTEClass, 4);
        this.createEAttribute(this.primitiveImplementationTEClass, 5);
        this.createEAttribute(this.primitiveImplementationTEClass, 6);
        this.resourceImplementationTEClass = this.createEClass(31);
        this.resourceImplementationTypeEClass = this.createEClass(32);
        this.scalarImplementationTEClass = this.createEClass(33);
        this.createEReference(this.scalarImplementationTEClass, 0);
        this.createEReference(this.scalarImplementationTEClass, 1);
        this.createEReference(this.scalarImplementationTEClass, 2);
        this.createEReference(this.scalarImplementationTEClass, 3);
        this.createEReference(this.scalarImplementationTEClass, 4);
        this.createEReference(this.scalarImplementationTEClass, 5);
        this.sizeTEClass = this.createEClass(34);
        this.createEAttribute(this.sizeTEClass, 0);
        this.createEAttribute(this.sizeTEClass, 1);
        this.templateImplementationTEClass = this.createEClass(35);
        this.createEAttribute(this.templateImplementationTEClass, 10);
        this.createEAttribute(this.templateImplementationTEClass, 11);
        this.timeStampTEClass = this.createEClass(36);
        this.createEAttribute(this.timeStampTEClass, 0);
        this.createEAttribute(this.timeStampTEClass, 1);
        this.createEAttribute(this.timeStampTEClass, 2);
        this.twoDImplementationTypeEClass = this.createEClass(37);
        this.createEReference(this.twoDImplementationTypeEClass, 0);
        this.createEReference(this.twoDImplementationTypeEClass, 1);
        this.createEReference(this.twoDImplementationTypeEClass, 2);
        this.createEAttribute(this.twoDImplementationTypeEClass, 3);
        this.viewTypeEClass = this.createEClass(38);
        this.createEAttribute(this.viewTypeEClass, 0);
        this.cacheLockingTypeEEnum = this.createEEnum(39);
        this.limitOverflowTypeEEnum = this.createEEnum(40);
        this.masterTypeEEnum = this.createEEnum(41);
        this.typeTypeEEnum = this.createEEnum(42);
        this.cacheLockingTypeObjectEDataType = this.createEDataType(43);
        this.limitOverflowTypeObjectEDataType = this.createEDataType(44);
        this.masterTypeObjectEDataType = this.createEDataType(45);
        this.numberOrFractionEDataType = this.createEDataType(46);
        this.numberOrFractionMember1EDataType = this.createEDataType(47);
        this.nzqrEDataType = this.createEDataType(48);
        this.nzqrMember2EDataType = this.createEDataType(49);
        this.oidEDataType = this.createEDataType(50);
        this.typeTypeObjectEDataType = this.createEDataType(51);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("ComponentImplementation");
        this.setNsPrefix("ComponentImplementation");
        this.setNsURI("http://www.etas.com/ascet/amd/620/component_implementation");
        XMLTypePackage theXMLTypePackage = (XMLTypePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2003/XMLType");
        XmldsigPackage theXmldsigPackage = (XmldsigPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#");
        this.complexReferenceImplementationTEClass.getESuperTypes().add((Object)this.getComplexImplementationT());
        this.dimensionalReferenceImplementationTEClass.getESuperTypes().add((Object)this.getDimensionalImplementationT());
        this.distributionImplementationTypeEClass.getESuperTypes().add((Object)this.getScalarImplementationT());
        this.elementImplementationTypeEClass.getESuperTypes().add((Object)this.getElementImplementationT());
        this.implementationCastImplementationTypeEClass.getESuperTypes().add((Object)this.getNumericImplementationT());
        this.implementationSetTypeEClass.getESuperTypes().add((Object)this.getImplementationSetT());
        this.logicImplementationTEClass.getESuperTypes().add((Object)this.getPrimitiveImplementationT());
        this.numericImplementationBaseTEClass.getESuperTypes().add((Object)this.getPrimitiveImplementationT());
        this.numericImplementationTEClass.getESuperTypes().add((Object)this.getNumericImplementationBaseT());
        this.resourceImplementationTEClass.getESuperTypes().add((Object)this.getPrimitiveImplementationT());
        this.resourceImplementationTypeEClass.getESuperTypes().add((Object)this.getResourceImplementationT());
        this.templateImplementationTEClass.getESuperTypes().add((Object)this.getNumericImplementationBaseT());
        this.initEClass(this.colorTEClass, ColorT.class, "ColorT", false, false, true);
        this.initEAttribute(this.getColorT_Blue(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "blue", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getColorT_Green(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "green", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getColorT_Red(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "red", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.complexImplementationTEClass, ComplexImplementationT.class, "ComplexImplementationT", false, false, true);
        this.initEAttribute(this.getComplexImplementationT_Checksum(), (EClassifier)theXMLTypePackage.getHexBinary(), "checksum", null, 0, 1, ComplexImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComplexImplementationT_ImplementationName(), (EClassifier)theXMLTypePackage.getString(), "implementationName", null, 1, 1, ComplexImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComplexImplementationT_ImplementationOID(), (EClassifier)this.getOID(), "implementationOID", null, 0, 1, ComplexImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComplexImplementationT_MemoryLocationInstance(), (EClassifier)theXMLTypePackage.getString(), "memoryLocationInstance", null, 0, 1, ComplexImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComplexImplementationT_Policy(), (EClassifier)theXMLTypePackage.getString(), "policy", null, 0, 1, ComplexImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComplexImplementationT_RescalingFormula(), (EClassifier)theXMLTypePackage.getString(), "rescalingFormula", null, 0, 1, ComplexImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.complexReferenceImplementationTEClass, ComplexReferenceImplementationT.class, "ComplexReferenceImplementationT", false, false, true);
        this.initEAttribute(this.getComplexReferenceImplementationT_CacheLocking(), (EClassifier)this.getCacheLockingType(), "cacheLocking", null, 0, 1, ComplexReferenceImplementationT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getComplexReferenceImplementationT_MemoryLocationReference(), (EClassifier)theXMLTypePackage.getString(), "memoryLocationReference", null, 1, 1, ComplexReferenceImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.componentImplementationTypeEClass, ComponentImplementationType.class, "ComponentImplementationType", false, false, true);
        this.initEReference(this.getComponentImplementationType_ImplementationSet(), (EClassifier)this.getImplementationSetType(), null, "implementationSet", null, 1, -1, ComponentImplementationType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentImplementationType_Signature(), (EClassifier)theXmldsigPackage.getSignatureType(), null, "signature", null, 0, 1, ComponentImplementationType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getComponentImplementationType_SchemaVersion(), (EClassifier)theXMLTypePackage.getString(), "schemaVersion", null, 0, 1, ComponentImplementationType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComponentImplementationType_ToolVersion(), (EClassifier)theXMLTypePackage.getString(), "toolVersion", null, 0, 1, ComponentImplementationType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.dimensionalImplementationTEClass, DimensionalImplementationT.class, "DimensionalImplementationT", false, false, true);
        this.initEReference(this.getDimensionalImplementationT_OneDImplementation(), (EClassifier)this.getOneDImplementationType(), null, "oneDImplementation", null, 0, 1, DimensionalImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDimensionalImplementationT_TwoDImplementation(), (EClassifier)this.getTwoDImplementationType(), null, "twoDImplementation", null, 0, 1, DimensionalImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDimensionalImplementationT_DistributionImplementation(), (EClassifier)this.getDistributionImplementationType(), null, "distributionImplementation", null, 0, 1, DimensionalImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDimensionalImplementationT_ArrayImplementation(), (EClassifier)this.getScalarImplementationT(), null, "arrayImplementation", null, 0, 1, DimensionalImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDimensionalImplementationT_MatrixImplementation(), (EClassifier)this.getScalarImplementationT(), null, "matrixImplementation", null, 0, 1, DimensionalImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.dimensionalReferenceImplementationTEClass, DimensionalReferenceImplementationT.class, "DimensionalReferenceImplementationT", false, false, true);
        this.initEAttribute(this.getDimensionalReferenceImplementationT_MemoryLocationReference(), (EClassifier)theXMLTypePackage.getString(), "memoryLocationReference", null, 1, 1, DimensionalReferenceImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.distributionImplementationTypeEClass, DistributionImplementationType.class, "DistributionImplementationType", false, false, true);
        this.initEClass(this.documentRootEClass, DocumentRoot.class, "DocumentRoot", false, false, true);
        this.initEAttribute(this.getDocumentRoot_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, null, false, false, true, false, false, false, false, true);
        this.initEReference(this.getDocumentRoot_XMLNSPrefixMap(), (EClassifier)this.ecorePackage.getEStringToStringMapEntry(), null, "xMLNSPrefixMap", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDocumentRoot_XSISchemaLocation(), (EClassifier)this.ecorePackage.getEStringToStringMapEntry(), null, "xSISchemaLocation", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDocumentRoot_ComponentImplementation(), (EClassifier)this.getComponentImplementationType(), null, "componentImplementation", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEClass(this.elementImplementationTEClass, ElementImplementationT.class, "ElementImplementationT", false, false, true);
        this.initEReference(this.getElementImplementationT_ScalarImplementation(), (EClassifier)this.getScalarImplementationT(), null, "scalarImplementation", null, 0, 1, ElementImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getElementImplementationT_DimensionalImplementation(), (EClassifier)this.getDimensionalImplementationT(), null, "dimensionalImplementation", null, 0, 1, ElementImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getElementImplementationT_ComplexImplementation(), (EClassifier)this.getComplexImplementationT(), null, "complexImplementation", null, 0, 1, ElementImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getElementImplementationT_DimensionalReferenceImplementation(), (EClassifier)this.getDimensionalReferenceImplementationT(), null, "dimensionalReferenceImplementation", null, 0, 1, ElementImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getElementImplementationT_ComplexReferenceImplementation(), (EClassifier)this.getComplexReferenceImplementationT(), null, "complexReferenceImplementation", null, 0, 1, ElementImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getElementImplementationT_AsReference(), (EClassifier)theXMLTypePackage.getBoolean(), "asReference", null, 0, 1, ElementImplementationT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getElementImplementationT_ElementName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "elementName", null, 1, 1, ElementImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getElementImplementationT_ElementOID(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "elementOID", null, 0, 1, ElementImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getElementImplementationT_Index(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "index", null, 0, 1, ElementImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getElementImplementationT_MethodName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "methodName", null, 0, 1, ElementImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.elementImplementationTypeEClass, ElementImplementationType.class, "ElementImplementationType", false, false, true);
        this.initEClass(this.fileReferenceTEClass, FileReferenceT.class, "FileReferenceT", false, false, true);
        this.initEAttribute(this.getFileReferenceT_Value(), (EClassifier)theXMLTypePackage.getString(), "value", null, 0, 1, FileReferenceT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFileReferenceT_Checksum(), (EClassifier)theXMLTypePackage.getHexBinary(), "checksum", null, 0, 1, FileReferenceT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFileReferenceT_Type(), (EClassifier)this.getTypeType(), "type", null, 1, 1, FileReferenceT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.formattedTextTEClass, FormattedTextT.class, "FormattedTextT", false, false, true);
        this.initEAttribute(this.getFormattedTextT_Value(), (EClassifier)theXMLTypePackage.getString(), "value", null, 0, 1, FormattedTextT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.genericDataTEClass, GenericDataT.class, "GenericDataT", false, false, true);
        this.initEAttribute(this.getGenericDataT_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 1, -1, GenericDataT.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getGenericDataT_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 0, 1, GenericDataT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.iconTEClass, IconT.class, "IconT", false, false, true);
        this.initEReference(this.getIconT_IconFile(), (EClassifier)this.getFileReferenceT(), null, "iconFile", null, 0, 1, IconT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getIconT_Size(), (EClassifier)this.getSizeT(), null, "size", null, 1, 1, IconT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getIconT_IconName(), (EClassifier)theXMLTypePackage.getString(), "iconName", null, 0, 1, IconT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getIconT_IconOID(), (EClassifier)this.getOID(), "iconOID", null, 0, 1, IconT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.implementationCastImplementationTypeEClass, ImplementationCastImplementationType.class, "ImplementationCastImplementationType", false, false, true);
        this.initEAttribute(this.getImplementationCastImplementationType_IgnoreImplementationCast(), (EClassifier)theXMLTypePackage.getBoolean(), "ignoreImplementationCast", null, 0, 1, ImplementationCastImplementationType.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.implementationEntryTEClass, ImplementationEntryT.class, "ImplementationEntryT", false, false, true);
        this.initEReference(this.getImplementationEntryT_ImplementationVariant(), (EClassifier)this.getImplementationVariantT(), null, "implementationVariant", null, 1, 1, ImplementationEntryT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getImplementationEntryT_CustomerData(), (EClassifier)this.getGenericDataT(), null, "customerData", null, 0, -1, ImplementationEntryT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getImplementationEntryT_Ignore(), (EClassifier)theXMLTypePackage.getString(), "ignore", "false", 0, 1, ImplementationEntryT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.implementationSetTEClass, ImplementationSetT.class, "ImplementationSetT", false, false, true);
        this.initEReference(this.getImplementationSetT_TimeStamp(), (EClassifier)this.getTimeStampT(), null, "timeStamp", null, 0, 1, ImplementationSetT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getImplementationSetT_Notes(), (EClassifier)this.getNotesT(), null, "notes", null, 0, 1, ImplementationSetT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getImplementationSetT_CustomerData(), (EClassifier)this.getGenericDataT(), null, "customerData", null, 0, -1, ImplementationSetT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_CacheLocking(), (EClassifier)this.getCacheLockingType(), "cacheLocking", null, 0, 1, ImplementationSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_Checksum(), (EClassifier)theXMLTypePackage.getHexBinary(), "checksum", null, 0, 1, ImplementationSetT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_ClassConfig(), (EClassifier)theXMLTypePackage.getBoolean(), "classConfig", null, 1, 1, ImplementationSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_Default(), (EClassifier)theXMLTypePackage.getBoolean(), "default", null, 1, 1, ImplementationSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_GenerateDataStructures(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "generateDataStructures", null, 0, 1, ImplementationSetT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_GenerateMethodBody(), (EClassifier)theXMLTypePackage.getBoolean(), "generateMethodBody", null, 1, 1, ImplementationSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_HierarchicalGenerationForSM(), (EClassifier)theXMLTypePackage.getBoolean(), "hierarchicalGenerationForSM", null, 0, 1, ImplementationSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_InlinePrivateMethodsSM(), (EClassifier)theXMLTypePackage.getBoolean(), "inlinePrivateMethodsSM", null, 0, 1, ImplementationSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_IsService(), (EClassifier)theXMLTypePackage.getBoolean(), "isService", null, 0, 1, ImplementationSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_MemoryLocation(), (EClassifier)theXMLTypePackage.getString(), "memoryLocation", null, 1, 1, ImplementationSetT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, ImplementationSetT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_OID(), (EClassifier)this.getOID(), "oID", null, 0, 1, ImplementationSetT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_OptimizeMethodCalls(), (EClassifier)theXMLTypePackage.getBoolean(), "optimizeMethodCalls", null, 1, 1, ImplementationSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_OutlineMethodsSM(), (EClassifier)theXMLTypePackage.getBoolean(), "outlineMethodsSM", null, 0, 1, ImplementationSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_PackageName(), (EClassifier)theXMLTypePackage.getString(), "packageName", null, 0, 1, ImplementationSetT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_UserDefinedOrder(), (EClassifier)theXMLTypePackage.getBoolean(), "userDefinedOrder", null, 0, 1, ImplementationSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_UsingServiceRoutines(), (EClassifier)theXMLTypePackage.getBoolean(), "usingServiceRoutines", null, 1, 1, ImplementationSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getImplementationSetT_UUID(), (EClassifier)theXMLTypePackage.getString(), "uUID", null, 0, 1, ImplementationSetT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.implementationSetTypeEClass, ImplementationSetType.class, "ImplementationSetType", false, false, true);
        this.initEReference(this.getImplementationSetType_ImplementationEntry(), (EClassifier)this.getImplementationEntryT(), null, "implementationEntry", null, 0, -1, ImplementationSetType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.implementationVariantTEClass, ImplementationVariantT.class, "ImplementationVariantT", false, false, true);
        this.initEReference(this.getImplementationVariantT_ElementImplementation(), (EClassifier)this.getElementImplementationType(), null, "elementImplementation", null, 0, 1, ImplementationVariantT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getImplementationVariantT_MethodImplementation(), (EClassifier)this.getMethodImplementationT(), null, "methodImplementation", null, 0, 1, ImplementationVariantT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getImplementationVariantT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 0, 1, ImplementationVariantT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.intervalTEClass, IntervalT.class, "IntervalT", false, false, true);
        this.initEAttribute(this.getIntervalT_Max(), (EClassifier)this.getNzqr(), "max", null, 1, 1, IntervalT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getIntervalT_Min(), (EClassifier)this.getNzqr(), "min", null, 1, 1, IntervalT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.itemRefTEClass, ItemRefT.class, "ItemRefT", false, false, true);
        this.initEAttribute(this.getItemRefT_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, ItemRefT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getItemRefT_OID(), (EClassifier)this.getOID(), "oID", null, 0, 1, ItemRefT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.logicImplementationTEClass, LogicImplementationT.class, "LogicImplementationT", false, false, true);
        this.initEAttribute(this.getLogicImplementationT_ImplType(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "implType", null, 1, 1, LogicImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getLogicImplementationT_PhysType(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "physType", null, 1, 1, LogicImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.methodImplementationTEClass, MethodImplementationT.class, "MethodImplementationT", false, false, true);
        this.initEAttribute(this.getMethodImplementationT_CacheLocking(), (EClassifier)this.getCacheLockingType(), "cacheLocking", null, 0, 1, MethodImplementationT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMethodImplementationT_Inline(), (EClassifier)theXMLTypePackage.getBoolean(), "inline", null, 1, 1, MethodImplementationT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMethodImplementationT_MemoryLocation(), (EClassifier)theXMLTypePackage.getString(), "memoryLocation", null, 1, 1, MethodImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getMethodImplementationT_MethodName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "methodName", null, 1, 1, MethodImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getMethodImplementationT_MethodOID(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "methodOID", null, 0, 1, MethodImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getMethodImplementationT_Symbol(), (EClassifier)theXMLTypePackage.getString(), "symbol", null, 0, 1, MethodImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getMethodImplementationT_UseFPU(), (EClassifier)theXMLTypePackage.getBoolean(), "useFPU", null, 1, 1, MethodImplementationT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.notesTEClass, NotesT.class, "NotesT", false, false, true);
        this.initEReference(this.getNotesT_Note(), (EClassifier)this.getNoteType(), null, "note", null, 0, -1, NotesT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.noteTypeEClass, NoteType.class, "NoteType", false, false, true);
        this.initEReference(this.getNoteType_Text(), (EClassifier)this.getFormattedTextT(), null, "text", null, 0, 1, NoteType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getNoteType_View(), (EClassifier)this.getViewType(), null, "view", null, 0, -1, NoteType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getNoteType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 0, 1, NoteType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.numericImplementationBaseTEClass, NumericImplementationBaseT.class, "NumericImplementationBaseT", false, false, true);
        this.initEAttribute(this.getNumericImplementationBaseT_IsLimitOverflow(), (EClassifier)theXMLTypePackage.getBoolean(), "isLimitOverflow", null, 0, 1, NumericImplementationBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNumericImplementationBaseT_LimitAssignments(), (EClassifier)theXMLTypePackage.getBoolean(), "limitAssignments", null, 1, 1, NumericImplementationBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNumericImplementationBaseT_LimitOverflow(), (EClassifier)this.getLimitOverflowType(), "limitOverflow", null, 1, 1, NumericImplementationBaseT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.numericImplementationTEClass, NumericImplementationT.class, "NumericImplementationT", false, false, true);
        this.initEReference(this.getNumericImplementationT_PhysicalInterval(), (EClassifier)this.getIntervalT(), null, "physicalInterval", null, 0, 1, NumericImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getNumericImplementationT_ImplementationInterval(), (EClassifier)this.getIntervalT(), null, "implementationInterval", null, 0, 1, NumericImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getNumericImplementationT_Formula(), (EClassifier)theXMLTypePackage.getString(), "formula", null, 1, 1, NumericImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getNumericImplementationT_ImplType(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "implType", null, 1, 1, NumericImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getNumericImplementationT_Master(), (EClassifier)this.getMasterType(), "master", null, 1, 1, NumericImplementationT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNumericImplementationT_PhysType(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "physType", null, 1, 1, NumericImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getNumericImplementationT_Quantization(), (EClassifier)this.getNzqr(), "quantization", null, 1, 1, NumericImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getNumericImplementationT_ZeroNotIncluded(), (EClassifier)theXMLTypePackage.getBoolean(), "zeroNotIncluded", null, 1, 1, NumericImplementationT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.oneDImplementationTypeEClass, OneDImplementationType.class, "OneDImplementationType", false, false, true);
        this.initEReference(this.getOneDImplementationType_XAxis(), (EClassifier)this.getScalarImplementationT(), null, "xAxis", null, 0, 1, OneDImplementationType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getOneDImplementationType_TableValues(), (EClassifier)this.getScalarImplementationT(), null, "tableValues", null, 1, 1, OneDImplementationType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getOneDImplementationType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 0, 1, OneDImplementationType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.optionTEClass, OptionT.class, "OptionT", false, false, true);
        this.initEAttribute(this.getOptionT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOptionT_Type(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "type", null, 0, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOptionT_Value(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "value", null, 1, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.pointTEClass, PointT.class, "PointT", false, false, true);
        this.initEAttribute(this.getPointT_X(), (EClassifier)theXMLTypePackage.getInteger(), "x", null, 1, 1, PointT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPointT_Y(), (EClassifier)theXMLTypePackage.getInteger(), "y", null, 1, 1, PointT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.primitiveImplementationTEClass, PrimitiveImplementationT.class, "PrimitiveImplementationT", false, false, true);
        this.initEAttribute(this.getPrimitiveImplementationT_AdditionalInformation(), (EClassifier)theXMLTypePackage.getString(), "additionalInformation", null, 0, 1, PrimitiveImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPrimitiveImplementationT_CacheLocking(), (EClassifier)this.getCacheLockingType(), "cacheLocking", null, 0, 1, PrimitiveImplementationT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPrimitiveImplementationT_MemoryLocationInstance(), (EClassifier)theXMLTypePackage.getString(), "memoryLocationInstance", null, 1, 1, PrimitiveImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPrimitiveImplementationT_MemoryLocationSearchResult(), (EClassifier)theXMLTypePackage.getString(), "memoryLocationSearchResult", null, 0, 1, PrimitiveImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPrimitiveImplementationT_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 0, 1, PrimitiveImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPrimitiveImplementationT_Policy(), (EClassifier)theXMLTypePackage.getString(), "policy", null, 0, 1, PrimitiveImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPrimitiveImplementationT_Rescaled(), (EClassifier)theXMLTypePackage.getBoolean(), "rescaled", null, 0, 1, PrimitiveImplementationT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.resourceImplementationTEClass, ResourceImplementationT.class, "ResourceImplementationT", false, false, true);
        this.initEClass(this.resourceImplementationTypeEClass, ResourceImplementationType.class, "ResourceImplementationType", false, false, true);
        this.initEClass(this.scalarImplementationTEClass, ScalarImplementationT.class, "ScalarImplementationT", false, false, true);
        this.initEReference(this.getScalarImplementationT_EnumerationImplementation(), (EClassifier)this.getPrimitiveImplementationT(), null, "enumerationImplementation", null, 0, 1, ScalarImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getScalarImplementationT_NumericImplementation(), (EClassifier)this.getNumericImplementationT(), null, "numericImplementation", null, 0, 1, ScalarImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getScalarImplementationT_LogicImplementation(), (EClassifier)this.getLogicImplementationT(), null, "logicImplementation", null, 0, 1, ScalarImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getScalarImplementationT_TemplateImplementation(), (EClassifier)this.getTemplateImplementationT(), null, "templateImplementation", null, 0, 1, ScalarImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getScalarImplementationT_ResourceImplementation(), (EClassifier)this.getResourceImplementationType(), null, "resourceImplementation", null, 0, 1, ScalarImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getScalarImplementationT_ImplementationCastImplementation(), (EClassifier)this.getImplementationCastImplementationType(), null, "implementationCastImplementation", null, 0, 1, ScalarImplementationT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.sizeTEClass, SizeT.class, "SizeT", false, false, true);
        this.initEAttribute(this.getSizeT_X(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "x", null, 1, 1, SizeT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getSizeT_Y(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "y", null, 1, 1, SizeT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.templateImplementationTEClass, TemplateImplementationT.class, "TemplateImplementationT", false, false, true);
        this.initEAttribute(this.getTemplateImplementationT_IgnoreImplementationCast(), (EClassifier)theXMLTypePackage.getBoolean(), "ignoreImplementationCast", null, 0, 1, TemplateImplementationT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTemplateImplementationT_RefersTo(), (EClassifier)theXMLTypePackage.getString(), "refersTo", null, 1, 1, TemplateImplementationT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.timeStampTEClass, TimeStampT.class, "TimeStampT", false, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampCounter(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "timeStampCounter", null, 0, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampKey(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "timeStampKey", null, 1, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampValue(), (EClassifier)theXMLTypePackage.getDateTime(), "timeStampValue", null, 1, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.twoDImplementationTypeEClass, TwoDImplementationType.class, "TwoDImplementationType", false, false, true);
        this.initEReference(this.getTwoDImplementationType_XAxis(), (EClassifier)this.getScalarImplementationT(), null, "xAxis", null, 0, 1, TwoDImplementationType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTwoDImplementationType_YAxis(), (EClassifier)this.getScalarImplementationT(), null, "yAxis", null, 0, 1, TwoDImplementationType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTwoDImplementationType_TableValues(), (EClassifier)this.getScalarImplementationT(), null, "tableValues", null, 1, 1, TwoDImplementationType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getTwoDImplementationType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 0, 1, TwoDImplementationType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.viewTypeEClass, ViewType.class, "ViewType", false, false, true);
        this.initEAttribute(this.getViewType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, ViewType.class, false, false, true, false, false, true, false, true);
        this.initEEnum(this.cacheLockingTypeEEnum, CacheLockingType.class, "CacheLockingType");
        this.addEEnumLiteral(this.cacheLockingTypeEEnum, CacheLockingType.AUTOMATIC);
        this.addEEnumLiteral(this.cacheLockingTypeEEnum, CacheLockingType.ON);
        this.addEEnumLiteral(this.cacheLockingTypeEEnum, CacheLockingType.OFF);
        this.initEEnum(this.limitOverflowTypeEEnum, LimitOverflowType.class, "LimitOverflowType");
        this.addEEnumLiteral(this.limitOverflowTypeEEnum, LimitOverflowType.NONE);
        this.addEEnumLiteral(this.limitOverflowTypeEEnum, LimitOverflowType.AUTOMATIC);
        this.addEEnumLiteral(this.limitOverflowTypeEEnum, LimitOverflowType.KEEP);
        this.addEEnumLiteral(this.limitOverflowTypeEEnum, LimitOverflowType.REDUCE);
        this.initEEnum(this.masterTypeEEnum, MasterType.class, "MasterType");
        this.addEEnumLiteral(this.masterTypeEEnum, MasterType.MODEL);
        this.addEEnumLiteral(this.masterTypeEEnum, MasterType.IMPLEMENTATION);
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
        this.initEDataType(this.cacheLockingTypeObjectEDataType, CacheLockingType.class, "CacheLockingTypeObject", true, true);
        this.initEDataType(this.limitOverflowTypeObjectEDataType, LimitOverflowType.class, "LimitOverflowTypeObject", true, true);
        this.initEDataType(this.masterTypeObjectEDataType, MasterType.class, "MasterTypeObject", true, true);
        this.initEDataType(this.numberOrFractionEDataType, Object.class, "NumberOrFraction", true, false);
        this.initEDataType(this.numberOrFractionMember1EDataType, String.class, "NumberOrFractionMember1", true, false);
        this.initEDataType(this.nzqrEDataType, Object.class, "Nzqr", true, false);
        this.initEDataType(this.nzqrMember2EDataType, String.class, "NzqrMember2", true, false);
        this.initEDataType(this.oidEDataType, String.class, "OID", true, false);
        this.initEDataType(this.typeTypeObjectEDataType, TypeType.class, "TypeTypeObject", true, true);
        this.createResource("http://www.etas.com/ascet/amd/620/component_implementation");
        this.createExtendedMetaDataAnnotations();
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.cacheLockingTypeEEnum, source, new String[]{"name", "CacheLockingType"});
        this.addAnnotation((ENamedElement)this.cacheLockingTypeObjectEDataType, source, new String[]{"name", "CacheLockingType:Object", "baseType", "CacheLockingType"});
        this.addAnnotation((ENamedElement)this.colorTEClass, source, new String[]{"name", "ColorT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getColorT_Blue(), source, new String[]{"kind", "attribute", "name", "blue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getColorT_Green(), source, new String[]{"kind", "attribute", "name", "green", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getColorT_Red(), source, new String[]{"kind", "attribute", "name", "red", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.complexImplementationTEClass, source, new String[]{"name", "ComplexImplementationT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getComplexImplementationT_Checksum(), source, new String[]{"kind", "attribute", "name", "checksum", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexImplementationT_ImplementationName(), source, new String[]{"kind", "attribute", "name", "implementationName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexImplementationT_ImplementationOID(), source, new String[]{"kind", "attribute", "name", "implementationOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexImplementationT_MemoryLocationInstance(), source, new String[]{"kind", "attribute", "name", "memoryLocationInstance", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexImplementationT_Policy(), source, new String[]{"kind", "attribute", "name", "policy", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexImplementationT_RescalingFormula(), source, new String[]{"kind", "attribute", "name", "rescalingFormula", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.complexReferenceImplementationTEClass, source, new String[]{"name", "ComplexReferenceImplementationT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getComplexReferenceImplementationT_CacheLocking(), source, new String[]{"kind", "attribute", "name", "cacheLocking", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexReferenceImplementationT_MemoryLocationReference(), source, new String[]{"kind", "attribute", "name", "memoryLocationReference", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.componentImplementationTypeEClass, source, new String[]{"name", "ComponentImplementation_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getComponentImplementationType_ImplementationSet(), source, new String[]{"kind", "element", "name", "ImplementationSet", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentImplementationType_Signature(), source, new String[]{"kind", "element", "name", "Signature", "namespace", "http://www.w3.org/2000/09/xmldsig#"});
        this.addAnnotation((ENamedElement)this.getComponentImplementationType_SchemaVersion(), source, new String[]{"kind", "attribute", "name", "schemaVersion", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentImplementationType_ToolVersion(), source, new String[]{"kind", "attribute", "name", "toolVersion", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.dimensionalImplementationTEClass, source, new String[]{"name", "DimensionalImplementationT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getDimensionalImplementationT_OneDImplementation(), source, new String[]{"kind", "element", "name", "OneDImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalImplementationT_TwoDImplementation(), source, new String[]{"kind", "element", "name", "TwoDImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalImplementationT_DistributionImplementation(), source, new String[]{"kind", "element", "name", "DistributionImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalImplementationT_ArrayImplementation(), source, new String[]{"kind", "element", "name", "ArrayImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalImplementationT_MatrixImplementation(), source, new String[]{"kind", "element", "name", "MatrixImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.dimensionalReferenceImplementationTEClass, source, new String[]{"name", "DimensionalReferenceImplementationT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getDimensionalReferenceImplementationT_MemoryLocationReference(), source, new String[]{"kind", "attribute", "name", "memoryLocationReference", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.distributionImplementationTypeEClass, source, new String[]{"name", "DistributionImplementation_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.documentRootEClass, source, new String[]{"name", "", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_XMLNSPrefixMap(), source, new String[]{"kind", "attribute", "name", "xmlns:prefix"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_XSISchemaLocation(), source, new String[]{"kind", "attribute", "name", "xsi:schemaLocation"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_ComponentImplementation(), source, new String[]{"kind", "element", "name", "ComponentImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.elementImplementationTEClass, source, new String[]{"name", "ElementImplementationT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getElementImplementationT_ScalarImplementation(), source, new String[]{"kind", "element", "name", "ScalarImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementImplementationT_DimensionalImplementation(), source, new String[]{"kind", "element", "name", "DimensionalImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementImplementationT_ComplexImplementation(), source, new String[]{"kind", "element", "name", "ComplexImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementImplementationT_DimensionalReferenceImplementation(), source, new String[]{"kind", "element", "name", "DimensionalReferenceImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementImplementationT_ComplexReferenceImplementation(), source, new String[]{"kind", "element", "name", "ComplexReferenceImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementImplementationT_AsReference(), source, new String[]{"kind", "attribute", "name", "asReference", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementImplementationT_ElementName(), source, new String[]{"kind", "attribute", "name", "elementName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementImplementationT_ElementOID(), source, new String[]{"kind", "attribute", "name", "elementOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementImplementationT_Index(), source, new String[]{"kind", "attribute", "name", "index", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementImplementationT_MethodName(), source, new String[]{"kind", "attribute", "name", "methodName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.elementImplementationTypeEClass, source, new String[]{"name", "ElementImplementation_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.fileReferenceTEClass, source, new String[]{"name", "FileReferenceT", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getFileReferenceT_Value(), source, new String[]{"name", ":0", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getFileReferenceT_Checksum(), source, new String[]{"kind", "attribute", "name", "checksum", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFileReferenceT_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.formattedTextTEClass, source, new String[]{"name", "FormattedTextT", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getFormattedTextT_Value(), source, new String[]{"name", ":0", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.genericDataTEClass, source, new String[]{"name", "GenericDataT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getGenericDataT_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##any", "name", ":0", "processing", "skip"});
        this.addAnnotation((ENamedElement)this.getGenericDataT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.iconTEClass, source, new String[]{"name", "IconT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getIconT_IconFile(), source, new String[]{"kind", "element", "name", "IconFile", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIconT_Size(), source, new String[]{"kind", "element", "name", "Size", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIconT_IconName(), source, new String[]{"kind", "attribute", "name", "iconName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIconT_IconOID(), source, new String[]{"kind", "attribute", "name", "iconOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.implementationCastImplementationTypeEClass, source, new String[]{"name", "ImplementationCastImplementation_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getImplementationCastImplementationType_IgnoreImplementationCast(), source, new String[]{"kind", "attribute", "name", "ignoreImplementationCast", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.implementationEntryTEClass, source, new String[]{"name", "ImplementationEntryT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getImplementationEntryT_ImplementationVariant(), source, new String[]{"kind", "element", "name", "ImplementationVariant", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationEntryT_CustomerData(), source, new String[]{"kind", "element", "name", "CustomerData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationEntryT_Ignore(), source, new String[]{"kind", "attribute", "name", "ignore", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.implementationSetTEClass, source, new String[]{"name", "ImplementationSetT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_TimeStamp(), source, new String[]{"kind", "element", "name", "TimeStamp", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_Notes(), source, new String[]{"kind", "element", "name", "Notes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_CustomerData(), source, new String[]{"kind", "element", "name", "CustomerData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_CacheLocking(), source, new String[]{"kind", "attribute", "name", "cacheLocking", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_Checksum(), source, new String[]{"kind", "attribute", "name", "checksum", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_ClassConfig(), source, new String[]{"kind", "attribute", "name", "classConfig", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_Default(), source, new String[]{"kind", "attribute", "name", "default", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_GenerateDataStructures(), source, new String[]{"kind", "attribute", "name", "generateDataStructures", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_GenerateMethodBody(), source, new String[]{"kind", "attribute", "name", "generateMethodBody", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_HierarchicalGenerationForSM(), source, new String[]{"kind", "attribute", "name", "hierarchicalGenerationForSM", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_InlinePrivateMethodsSM(), source, new String[]{"kind", "attribute", "name", "inlinePrivateMethodsSM", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_IsService(), source, new String[]{"kind", "attribute", "name", "isService", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_MemoryLocation(), source, new String[]{"kind", "attribute", "name", "memoryLocation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_OptimizeMethodCalls(), source, new String[]{"kind", "attribute", "name", "optimizeMethodCalls", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_OutlineMethodsSM(), source, new String[]{"kind", "attribute", "name", "outlineMethodsSM", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_PackageName(), source, new String[]{"kind", "attribute", "name", "packageName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_UserDefinedOrder(), source, new String[]{"kind", "attribute", "name", "userDefinedOrder", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_UsingServiceRoutines(), source, new String[]{"kind", "attribute", "name", "usingServiceRoutines", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationSetT_UUID(), source, new String[]{"kind", "attribute", "name", "UUID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.implementationSetTypeEClass, source, new String[]{"name", "ImplementationSet_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getImplementationSetType_ImplementationEntry(), source, new String[]{"kind", "element", "name", "ImplementationEntry", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.implementationVariantTEClass, source, new String[]{"name", "ImplementationVariantT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getImplementationVariantT_ElementImplementation(), source, new String[]{"kind", "element", "name", "ElementImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationVariantT_MethodImplementation(), source, new String[]{"kind", "element", "name", "MethodImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationVariantT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.intervalTEClass, source, new String[]{"name", "IntervalT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getIntervalT_Max(), source, new String[]{"kind", "attribute", "name", "max", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIntervalT_Min(), source, new String[]{"kind", "attribute", "name", "min", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.itemRefTEClass, source, new String[]{"name", "ItemRefT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getItemRefT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemRefT_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.limitOverflowTypeEEnum, source, new String[]{"name", "limitOverflow_._type"});
        this.addAnnotation((ENamedElement)this.limitOverflowTypeObjectEDataType, source, new String[]{"name", "limitOverflow_._type:Object", "baseType", "limitOverflow_._type"});
        this.addAnnotation((ENamedElement)this.logicImplementationTEClass, source, new String[]{"name", "LogicImplementationT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getLogicImplementationT_ImplType(), source, new String[]{"kind", "attribute", "name", "implType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getLogicImplementationT_PhysType(), source, new String[]{"kind", "attribute", "name", "physType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.masterTypeEEnum, source, new String[]{"name", "master_._type"});
        this.addAnnotation((ENamedElement)this.masterTypeObjectEDataType, source, new String[]{"name", "master_._type:Object", "baseType", "master_._type"});
        this.addAnnotation((ENamedElement)this.methodImplementationTEClass, source, new String[]{"name", "MethodImplementationT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getMethodImplementationT_CacheLocking(), source, new String[]{"kind", "attribute", "name", "cacheLocking", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodImplementationT_Inline(), source, new String[]{"kind", "attribute", "name", "inline", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodImplementationT_MemoryLocation(), source, new String[]{"kind", "attribute", "name", "memoryLocation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodImplementationT_MethodName(), source, new String[]{"kind", "attribute", "name", "methodName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodImplementationT_MethodOID(), source, new String[]{"kind", "attribute", "name", "methodOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodImplementationT_Symbol(), source, new String[]{"kind", "attribute", "name", "symbol", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getMethodImplementationT_UseFPU(), source, new String[]{"kind", "attribute", "name", "useFPU", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.notesTEClass, source, new String[]{"name", "NotesT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getNotesT_Note(), source, new String[]{"kind", "element", "name", "Note", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.noteTypeEClass, source, new String[]{"name", "Note_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getNoteType_Text(), source, new String[]{"kind", "element", "name", "Text", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNoteType_View(), source, new String[]{"kind", "element", "name", "View", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNoteType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.numberOrFractionEDataType, source, new String[]{"name", "NumberOrFraction", "memberTypes", "http://www.eclipse.org/emf/2003/XMLType#double NumberOrFraction_._member_._1"});
        this.addAnnotation((ENamedElement)this.numberOrFractionMember1EDataType, source, new String[]{"name", "NumberOrFraction_._member_._1", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "pattern", "-?\\d*.?\\d*/\\d*\\.?\\d*"});
        this.addAnnotation((ENamedElement)this.numericImplementationBaseTEClass, source, new String[]{"name", "NumericImplementationBaseT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getNumericImplementationBaseT_IsLimitOverflow(), source, new String[]{"kind", "attribute", "name", "isLimitOverflow", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNumericImplementationBaseT_LimitAssignments(), source, new String[]{"kind", "attribute", "name", "limitAssignments", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNumericImplementationBaseT_LimitOverflow(), source, new String[]{"kind", "attribute", "name", "limitOverflow", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.numericImplementationTEClass, source, new String[]{"name", "NumericImplementationT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getNumericImplementationT_PhysicalInterval(), source, new String[]{"kind", "element", "name", "PhysicalInterval", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNumericImplementationT_ImplementationInterval(), source, new String[]{"kind", "element", "name", "ImplementationInterval", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNumericImplementationT_Formula(), source, new String[]{"kind", "attribute", "name", "formula", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNumericImplementationT_ImplType(), source, new String[]{"kind", "attribute", "name", "implType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNumericImplementationT_Master(), source, new String[]{"kind", "attribute", "name", "master", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNumericImplementationT_PhysType(), source, new String[]{"kind", "attribute", "name", "physType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNumericImplementationT_Quantization(), source, new String[]{"kind", "attribute", "name", "quantization", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNumericImplementationT_ZeroNotIncluded(), source, new String[]{"kind", "attribute", "name", "zeroNotIncluded", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.nzqrEDataType, source, new String[]{"name", "nzqr", "memberTypes", "http://www.eclipse.org/emf/2003/XMLType#double http://www.eclipse.org/emf/2003/XMLType#int nzqr_._member_._2"});
        this.addAnnotation((ENamedElement)this.nzqrMember2EDataType, source, new String[]{"name", "nzqr_._member_._2", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "pattern", "-?\\d*/\\d*"});
        this.addAnnotation((ENamedElement)this.oidEDataType, source, new String[]{"name", "OID", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "pattern", "(_040|_07v)\\w{26}|_sm"});
        this.addAnnotation((ENamedElement)this.oneDImplementationTypeEClass, source, new String[]{"name", "OneDImplementation_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getOneDImplementationType_XAxis(), source, new String[]{"kind", "element", "name", "XAxis", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOneDImplementationType_TableValues(), source, new String[]{"kind", "element", "name", "TableValues", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOneDImplementationType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.optionTEClass, source, new String[]{"name", "OptionT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getOptionT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOptionT_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOptionT_Value(), source, new String[]{"kind", "attribute", "name", "value", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.pointTEClass, source, new String[]{"name", "PointT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getPointT_X(), source, new String[]{"kind", "attribute", "name", "x", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPointT_Y(), source, new String[]{"kind", "attribute", "name", "y", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.primitiveImplementationTEClass, source, new String[]{"name", "PrimitiveImplementationT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getPrimitiveImplementationT_AdditionalInformation(), source, new String[]{"kind", "attribute", "name", "additionalInformation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPrimitiveImplementationT_CacheLocking(), source, new String[]{"kind", "attribute", "name", "cacheLocking", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPrimitiveImplementationT_MemoryLocationInstance(), source, new String[]{"kind", "attribute", "name", "memoryLocationInstance", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPrimitiveImplementationT_MemoryLocationSearchResult(), source, new String[]{"kind", "attribute", "name", "memoryLocationSearchResult", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPrimitiveImplementationT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPrimitiveImplementationT_Policy(), source, new String[]{"kind", "attribute", "name", "policy", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPrimitiveImplementationT_Rescaled(), source, new String[]{"kind", "attribute", "name", "rescaled", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.resourceImplementationTEClass, source, new String[]{"name", "ResourceImplementationT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.resourceImplementationTypeEClass, source, new String[]{"name", "ResourceImplementation_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.scalarImplementationTEClass, source, new String[]{"name", "ScalarImplementationT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getScalarImplementationT_EnumerationImplementation(), source, new String[]{"kind", "element", "name", "EnumerationImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getScalarImplementationT_NumericImplementation(), source, new String[]{"kind", "element", "name", "NumericImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getScalarImplementationT_LogicImplementation(), source, new String[]{"kind", "element", "name", "LogicImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getScalarImplementationT_TemplateImplementation(), source, new String[]{"kind", "element", "name", "TemplateImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getScalarImplementationT_ResourceImplementation(), source, new String[]{"kind", "element", "name", "ResourceImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getScalarImplementationT_ImplementationCastImplementation(), source, new String[]{"kind", "element", "name", "ImplementationCastImplementation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.sizeTEClass, source, new String[]{"name", "SizeT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getSizeT_X(), source, new String[]{"kind", "attribute", "name", "x", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSizeT_Y(), source, new String[]{"kind", "attribute", "name", "y", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.templateImplementationTEClass, source, new String[]{"name", "TemplateImplementationT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getTemplateImplementationT_IgnoreImplementationCast(), source, new String[]{"kind", "attribute", "name", "ignoreImplementationCast", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTemplateImplementationT_RefersTo(), source, new String[]{"kind", "attribute", "name", "refersTo", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.timeStampTEClass, source, new String[]{"name", "TimeStampT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampCounter(), source, new String[]{"kind", "attribute", "name", "timeStampCounter", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampKey(), source, new String[]{"kind", "attribute", "name", "timeStampKey", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampValue(), source, new String[]{"kind", "attribute", "name", "timeStampValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.twoDImplementationTypeEClass, source, new String[]{"name", "TwoDImplementation_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getTwoDImplementationType_XAxis(), source, new String[]{"kind", "element", "name", "XAxis", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTwoDImplementationType_YAxis(), source, new String[]{"kind", "element", "name", "YAxis", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTwoDImplementationType_TableValues(), source, new String[]{"kind", "element", "name", "TableValues", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTwoDImplementationType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.typeTypeEEnum, source, new String[]{"name", "type_._type"});
        this.addAnnotation((ENamedElement)this.typeTypeObjectEDataType, source, new String[]{"name", "type_._type:Object", "baseType", "type_._type"});
        this.addAnnotation((ENamedElement)this.viewTypeEClass, source, new String[]{"name", "View_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getViewType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
    }
}

