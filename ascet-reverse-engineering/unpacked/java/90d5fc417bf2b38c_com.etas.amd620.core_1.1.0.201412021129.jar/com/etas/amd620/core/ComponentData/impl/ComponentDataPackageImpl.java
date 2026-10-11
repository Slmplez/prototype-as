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
package com.etas.amd620.core.ComponentData.impl;

import com.etas.amd620.core.ComponentData.ArrayT;
import com.etas.amd620.core.ComponentData.ColorT;
import com.etas.amd620.core.ComponentData.ComplexDataT;
import com.etas.amd620.core.ComponentData.ComponentDataFactory;
import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.ComponentDataType;
import com.etas.amd620.core.ComponentData.CurveKindT;
import com.etas.amd620.core.ComponentData.DataEntryT;
import com.etas.amd620.core.ComponentData.DataSetT;
import com.etas.amd620.core.ComponentData.DataVariantT;
import com.etas.amd620.core.ComponentData.DependencyT;
import com.etas.amd620.core.ComponentData.DimensionalDataT;
import com.etas.amd620.core.ComponentData.DimensionalTypeT;
import com.etas.amd620.core.ComponentData.DistributionInfoT;
import com.etas.amd620.core.ComponentData.DocumentRoot;
import com.etas.amd620.core.ComponentData.EnumerationDataT;
import com.etas.amd620.core.ComponentData.ExtrapolationType;
import com.etas.amd620.core.ComponentData.FileReferenceT;
import com.etas.amd620.core.ComponentData.FormattedTextT;
import com.etas.amd620.core.ComponentData.GenericDataT;
import com.etas.amd620.core.ComponentData.IconT;
import com.etas.amd620.core.ComponentData.IntervalT;
import com.etas.amd620.core.ComponentData.ItemRefT;
import com.etas.amd620.core.ComponentData.LocalType;
import com.etas.amd620.core.ComponentData.LogicDataT;
import com.etas.amd620.core.ComponentData.MatrixT;
import com.etas.amd620.core.ComponentData.NoteType;
import com.etas.amd620.core.ComponentData.NotesT;
import com.etas.amd620.core.ComponentData.NumericDataT;
import com.etas.amd620.core.ComponentData.OneDType;
import com.etas.amd620.core.ComponentData.OptionT;
import com.etas.amd620.core.ComponentData.ParameterType;
import com.etas.amd620.core.ComponentData.PointT;
import com.etas.amd620.core.ComponentData.ReferenceDataT;
import com.etas.amd620.core.ComponentData.ScalarTypeT;
import com.etas.amd620.core.ComponentData.SizeT;
import com.etas.amd620.core.ComponentData.TimeStampT;
import com.etas.amd620.core.ComponentData.TwoDType;
import com.etas.amd620.core.ComponentData.TypeType;
import com.etas.amd620.core.ComponentData.ViewType;
import com.etas.amd620.core.ComponentData.util.ComponentDataValidator;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.impl.ComponentImplementationPackageImpl;
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

public class ComponentDataPackageImpl
extends EPackageImpl
implements ComponentDataPackage {
    private EClass arrayTEClass = null;
    private EClass colorTEClass = null;
    private EClass complexDataTEClass = null;
    private EClass componentDataTypeEClass = null;
    private EClass dataEntryTEClass = null;
    private EClass dataSetTEClass = null;
    private EClass dataVariantTEClass = null;
    private EClass dependencyTEClass = null;
    private EClass dimensionalDataTEClass = null;
    private EClass dimensionalTypeTEClass = null;
    private EClass distributionInfoTEClass = null;
    private EClass documentRootEClass = null;
    private EClass enumerationDataTEClass = null;
    private EClass fileReferenceTEClass = null;
    private EClass formattedTextTEClass = null;
    private EClass genericDataTEClass = null;
    private EClass iconTEClass = null;
    private EClass intervalTEClass = null;
    private EClass itemRefTEClass = null;
    private EClass localTypeEClass = null;
    private EClass logicDataTEClass = null;
    private EClass matrixTEClass = null;
    private EClass notesTEClass = null;
    private EClass noteTypeEClass = null;
    private EClass numericDataTEClass = null;
    private EClass oneDTypeEClass = null;
    private EClass optionTEClass = null;
    private EClass parameterTypeEClass = null;
    private EClass pointTEClass = null;
    private EClass referenceDataTEClass = null;
    private EClass scalarTypeTEClass = null;
    private EClass sizeTEClass = null;
    private EClass timeStampTEClass = null;
    private EClass twoDTypeEClass = null;
    private EClass viewTypeEClass = null;
    private EEnum curveKindTEEnum = null;
    private EEnum extrapolationTypeEEnum = null;
    private EEnum typeTypeEEnum = null;
    private EDataType curveKindTObjectEDataType = null;
    private EDataType extrapolationTypeObjectEDataType = null;
    private EDataType numberOrFractionEDataType = null;
    private EDataType numberOrFractionMember1EDataType = null;
    private EDataType nzqrEDataType = null;
    private EDataType nzqrMember2EDataType = null;
    private EDataType oidEDataType = null;
    private EDataType typeTypeObjectEDataType = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ComponentDataPackageImpl() {
        super("http://www.etas.com/ascet/amd/620/component_data", (EFactory)ComponentDataFactory.eINSTANCE);
    }

    public static ComponentDataPackage init() {
        if (isInited) {
            return (ComponentDataPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data");
        }
        ComponentDataPackageImpl theComponentDataPackage = (ComponentDataPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/component_data") instanceof ComponentDataPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/component_data") : new ComponentDataPackageImpl());
        isInited = true;
        XMLTypePackage.eINSTANCE.eClass();
        Amd620PackageImpl theAmd620Package = (Amd620PackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") instanceof Amd620PackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") : Amd620Package.eINSTANCE);
        ComponentMainPackageImpl theComponentMainPackage = (ComponentMainPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") instanceof ComponentMainPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") : ComponentMainPackage.eINSTANCE);
        ComponentImplementationPackageImpl theComponentImplementationPackage = (ComponentImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") instanceof ComponentImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") : ComponentImplementationPackage.eINSTANCE);
        ComponentSpecificationPackageImpl theComponentSpecificationPackage = (ComponentSpecificationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") instanceof ComponentSpecificationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") : ComponentSpecificationPackage.eINSTANCE);
        ComponentProjectPackageImpl theComponentProjectPackage = (ComponentProjectPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project") instanceof ComponentProjectPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project") : ComponentProjectPackage.eINSTANCE);
        ImplementationtypesPackageImpl theImplementationtypesPackage = (ImplementationtypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") instanceof ImplementationtypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") : ImplementationtypesPackage.eINSTANCE);
        FormulasPackageImpl theFormulasPackage = (FormulasPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas") instanceof FormulasPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas") : FormulasPackage.eINSTANCE);
        XmldsigPackageImpl theXmldsigPackage = (XmldsigPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#") instanceof XmldsigPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#") : XmldsigPackage.eINSTANCE);
        theComponentSpecificationPackage.loadPackage();
        theComponentDataPackage.createPackageContents();
        theAmd620Package.createPackageContents();
        theComponentMainPackage.createPackageContents();
        theComponentImplementationPackage.createPackageContents();
        theComponentProjectPackage.createPackageContents();
        theImplementationtypesPackage.createPackageContents();
        theFormulasPackage.createPackageContents();
        theXmldsigPackage.createPackageContents();
        theComponentDataPackage.initializePackageContents();
        theAmd620Package.initializePackageContents();
        theComponentMainPackage.initializePackageContents();
        theComponentImplementationPackage.initializePackageContents();
        theComponentProjectPackage.initializePackageContents();
        theImplementationtypesPackage.initializePackageContents();
        theFormulasPackage.initializePackageContents();
        theXmldsigPackage.initializePackageContents();
        theComponentSpecificationPackage.fixPackageContents();
        EValidator.Registry.INSTANCE.put((Object)theComponentDataPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return ComponentDataValidator.INSTANCE;
            }
        });
        theComponentDataPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://www.etas.com/ascet/amd/620/component_data", (Object)theComponentDataPackage);
        return theComponentDataPackage;
    }

    @Override
    public EClass getArrayT() {
        return this.arrayTEClass;
    }

    @Override
    public EReference getArrayT_Value() {
        return (EReference)this.arrayTEClass.getEStructuralFeatures().get(0);
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
    public EClass getComplexDataT() {
        return this.complexDataTEClass;
    }

    @Override
    public EAttribute getComplexDataT_Checksum() {
        return (EAttribute)this.complexDataTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getComplexDataT_DataName() {
        return (EAttribute)this.complexDataTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getComplexDataT_DataOID() {
        return (EAttribute)this.complexDataTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getComponentDataType() {
        return this.componentDataTypeEClass;
    }

    @Override
    public EReference getComponentDataType_DataSet() {
        return (EReference)this.componentDataTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getComponentDataType_Signature() {
        return (EReference)this.componentDataTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getComponentDataType_SchemaVersion() {
        return (EAttribute)this.componentDataTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getComponentDataType_ToolVersion() {
        return (EAttribute)this.componentDataTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getDataEntryT() {
        return this.dataEntryTEClass;
    }

    @Override
    public EReference getDataEntryT_DataVariant() {
        return (EReference)this.dataEntryTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getDataEntryT_CustomerData() {
        return (EReference)this.dataEntryTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getDataEntryT_ElementName() {
        return (EAttribute)this.dataEntryTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getDataEntryT_ElementOID() {
        return (EAttribute)this.dataEntryTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getDataEntryT_Ignore() {
        return (EAttribute)this.dataEntryTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getDataSetT() {
        return this.dataSetTEClass;
    }

    @Override
    public EReference getDataSetT_TimeStamp() {
        return (EReference)this.dataSetTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getDataSetT_Notes() {
        return (EReference)this.dataSetTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getDataSetT_CustomerData() {
        return (EReference)this.dataSetTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getDataSetT_DataEntry() {
        return (EReference)this.dataSetTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getDataSetT_Checksum() {
        return (EAttribute)this.dataSetTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getDataSetT_ClassConfig() {
        return (EAttribute)this.dataSetTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getDataSetT_Default() {
        return (EAttribute)this.dataSetTEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getDataSetT_Name() {
        return (EAttribute)this.dataSetTEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getDataSetT_OID() {
        return (EAttribute)this.dataSetTEClass.getEStructuralFeatures().get(8);
    }

    @Override
    public EAttribute getDataSetT_UUID() {
        return (EAttribute)this.dataSetTEClass.getEStructuralFeatures().get(9);
    }

    @Override
    public EClass getDataVariantT() {
        return this.dataVariantTEClass;
    }

    @Override
    public EReference getDataVariantT_DimensionalType() {
        return (EReference)this.dataVariantTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getDataVariantT_ScalarType() {
        return (EReference)this.dataVariantTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getDataVariantT_ComplexType() {
        return (EReference)this.dataVariantTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getDataVariantT_ReferenceType() {
        return (EReference)this.dataVariantTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getDataVariantT_Dependency() {
        return (EReference)this.dataVariantTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EReference getDataVariantT_DimensionalType1() {
        return (EReference)this.dataVariantTEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EReference getDataVariantT_ScalarType1() {
        return (EReference)this.dataVariantTEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getDataVariantT_Name() {
        return (EAttribute)this.dataVariantTEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getDataVariantT_OID() {
        return (EAttribute)this.dataVariantTEClass.getEStructuralFeatures().get(8);
    }

    @Override
    public EClass getDependencyT() {
        return this.dependencyTEClass;
    }

    @Override
    public EReference getDependencyT_Parameter() {
        return (EReference)this.dependencyTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getDimensionalDataT() {
        return this.dimensionalDataTEClass;
    }

    @Override
    public EAttribute getDimensionalDataT_CurrentSizeX() {
        return (EAttribute)this.dimensionalDataTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getDimensionalDataT_CurrentSizeY() {
        return (EAttribute)this.dimensionalDataTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getDimensionalTypeT() {
        return this.dimensionalTypeTEClass;
    }

    @Override
    public EReference getDimensionalTypeT_OneD() {
        return (EReference)this.dimensionalTypeTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getDimensionalTypeT_TwoD() {
        return (EReference)this.dimensionalTypeTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getDimensionalTypeT_Distribution() {
        return (EReference)this.dimensionalTypeTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getDimensionalTypeT_Array() {
        return (EReference)this.dimensionalTypeTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getDimensionalTypeT_Matrix() {
        return (EReference)this.dimensionalTypeTEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getDistributionInfoT() {
        return this.distributionInfoTEClass;
    }

    @Override
    public EAttribute getDistributionInfoT_ElementName() {
        return (EAttribute)this.distributionInfoTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getDistributionInfoT_ElementOID() {
        return (EAttribute)this.distributionInfoTEClass.getEStructuralFeatures().get(1);
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
    public EReference getDocumentRoot_ComponentData() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getEnumerationDataT() {
        return this.enumerationDataTEClass;
    }

    @Override
    public EAttribute getEnumerationDataT_Value() {
        return (EAttribute)this.enumerationDataTEClass.getEStructuralFeatures().get(0);
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
    public EClass getLocalType() {
        return this.localTypeEClass;
    }

    @Override
    public EAttribute getLocalType_ElementName() {
        return (EAttribute)this.localTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getLocalType_ElementOID() {
        return (EAttribute)this.localTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getLogicDataT() {
        return this.logicDataTEClass;
    }

    @Override
    public EAttribute getLogicDataT_Value() {
        return (EAttribute)this.logicDataTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getMatrixT() {
        return this.matrixTEClass;
    }

    @Override
    public EReference getMatrixT_Row() {
        return (EReference)this.matrixTEClass.getEStructuralFeatures().get(0);
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
    public EClass getNumericDataT() {
        return this.numericDataTEClass;
    }

    @Override
    public EAttribute getNumericDataT_Value() {
        return (EAttribute)this.numericDataTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getOneDType() {
        return this.oneDTypeEClass;
    }

    @Override
    public EReference getOneDType_XAxis() {
        return (EReference)this.oneDTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getOneDType_XDistribution() {
        return (EReference)this.oneDTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getOneDType_Values() {
        return (EReference)this.oneDTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getOneDType_Extrapolation() {
        return (EAttribute)this.oneDTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getOneDType_Interpolation() {
        return (EAttribute)this.oneDTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getOneDType_Type() {
        return (EAttribute)this.oneDTypeEClass.getEStructuralFeatures().get(5);
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
    public EClass getParameterType() {
        return this.parameterTypeEClass;
    }

    @Override
    public EAttribute getParameterType_FormalName() {
        return (EAttribute)this.parameterTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getParameterType_FormalOID() {
        return (EAttribute)this.parameterTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getParameterType_ValueName() {
        return (EAttribute)this.parameterTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getParameterType_ValueOID() {
        return (EAttribute)this.parameterTypeEClass.getEStructuralFeatures().get(3);
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
    public EClass getReferenceDataT() {
        return this.referenceDataTEClass;
    }

    @Override
    public EReference getReferenceDataT_Local() {
        return (EReference)this.referenceDataTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getReferenceDataT_External() {
        return (EReference)this.referenceDataTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getScalarTypeT() {
        return this.scalarTypeTEClass;
    }

    @Override
    public EReference getScalarTypeT_Enumeration() {
        return (EReference)this.scalarTypeTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getScalarTypeT_Numeric() {
        return (EReference)this.scalarTypeTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getScalarTypeT_Logic() {
        return (EReference)this.scalarTypeTEClass.getEStructuralFeatures().get(2);
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
    public EClass getTwoDType() {
        return this.twoDTypeEClass;
    }

    @Override
    public EReference getTwoDType_XAxis() {
        return (EReference)this.twoDTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getTwoDType_YAxis() {
        return (EReference)this.twoDTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getTwoDType_XDistribution() {
        return (EReference)this.twoDTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getTwoDType_YDistribution() {
        return (EReference)this.twoDTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getTwoDType_Values() {
        return (EReference)this.twoDTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getTwoDType_Extrapolation() {
        return (EAttribute)this.twoDTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getTwoDType_Interpolation() {
        return (EAttribute)this.twoDTypeEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getTwoDType_Type() {
        return (EAttribute)this.twoDTypeEClass.getEStructuralFeatures().get(7);
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
    public EEnum getCurveKindT() {
        return this.curveKindTEEnum;
    }

    @Override
    public EEnum getExtrapolationType() {
        return this.extrapolationTypeEEnum;
    }

    @Override
    public EEnum getTypeType() {
        return this.typeTypeEEnum;
    }

    @Override
    public EDataType getCurveKindTObject() {
        return this.curveKindTObjectEDataType;
    }

    @Override
    public EDataType getExtrapolationTypeObject() {
        return this.extrapolationTypeObjectEDataType;
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
    public ComponentDataFactory getComponentDataFactory() {
        return (ComponentDataFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.arrayTEClass = this.createEClass(0);
        this.createEReference(this.arrayTEClass, 2);
        this.colorTEClass = this.createEClass(1);
        this.createEAttribute(this.colorTEClass, 0);
        this.createEAttribute(this.colorTEClass, 1);
        this.createEAttribute(this.colorTEClass, 2);
        this.complexDataTEClass = this.createEClass(2);
        this.createEAttribute(this.complexDataTEClass, 0);
        this.createEAttribute(this.complexDataTEClass, 1);
        this.createEAttribute(this.complexDataTEClass, 2);
        this.componentDataTypeEClass = this.createEClass(3);
        this.createEReference(this.componentDataTypeEClass, 0);
        this.createEReference(this.componentDataTypeEClass, 1);
        this.createEAttribute(this.componentDataTypeEClass, 2);
        this.createEAttribute(this.componentDataTypeEClass, 3);
        this.dataEntryTEClass = this.createEClass(4);
        this.createEReference(this.dataEntryTEClass, 0);
        this.createEReference(this.dataEntryTEClass, 1);
        this.createEAttribute(this.dataEntryTEClass, 2);
        this.createEAttribute(this.dataEntryTEClass, 3);
        this.createEAttribute(this.dataEntryTEClass, 4);
        this.dataSetTEClass = this.createEClass(5);
        this.createEReference(this.dataSetTEClass, 0);
        this.createEReference(this.dataSetTEClass, 1);
        this.createEReference(this.dataSetTEClass, 2);
        this.createEReference(this.dataSetTEClass, 3);
        this.createEAttribute(this.dataSetTEClass, 4);
        this.createEAttribute(this.dataSetTEClass, 5);
        this.createEAttribute(this.dataSetTEClass, 6);
        this.createEAttribute(this.dataSetTEClass, 7);
        this.createEAttribute(this.dataSetTEClass, 8);
        this.createEAttribute(this.dataSetTEClass, 9);
        this.dataVariantTEClass = this.createEClass(6);
        this.createEReference(this.dataVariantTEClass, 0);
        this.createEReference(this.dataVariantTEClass, 1);
        this.createEReference(this.dataVariantTEClass, 2);
        this.createEReference(this.dataVariantTEClass, 3);
        this.createEReference(this.dataVariantTEClass, 4);
        this.createEReference(this.dataVariantTEClass, 5);
        this.createEReference(this.dataVariantTEClass, 6);
        this.createEAttribute(this.dataVariantTEClass, 7);
        this.createEAttribute(this.dataVariantTEClass, 8);
        this.dependencyTEClass = this.createEClass(7);
        this.createEReference(this.dependencyTEClass, 0);
        this.dimensionalDataTEClass = this.createEClass(8);
        this.createEAttribute(this.dimensionalDataTEClass, 0);
        this.createEAttribute(this.dimensionalDataTEClass, 1);
        this.dimensionalTypeTEClass = this.createEClass(9);
        this.createEReference(this.dimensionalTypeTEClass, 0);
        this.createEReference(this.dimensionalTypeTEClass, 1);
        this.createEReference(this.dimensionalTypeTEClass, 2);
        this.createEReference(this.dimensionalTypeTEClass, 3);
        this.createEReference(this.dimensionalTypeTEClass, 4);
        this.distributionInfoTEClass = this.createEClass(10);
        this.createEAttribute(this.distributionInfoTEClass, 0);
        this.createEAttribute(this.distributionInfoTEClass, 1);
        this.documentRootEClass = this.createEClass(11);
        this.createEAttribute(this.documentRootEClass, 0);
        this.createEReference(this.documentRootEClass, 1);
        this.createEReference(this.documentRootEClass, 2);
        this.createEReference(this.documentRootEClass, 3);
        this.enumerationDataTEClass = this.createEClass(12);
        this.createEAttribute(this.enumerationDataTEClass, 0);
        this.fileReferenceTEClass = this.createEClass(13);
        this.createEAttribute(this.fileReferenceTEClass, 0);
        this.createEAttribute(this.fileReferenceTEClass, 1);
        this.createEAttribute(this.fileReferenceTEClass, 2);
        this.formattedTextTEClass = this.createEClass(14);
        this.createEAttribute(this.formattedTextTEClass, 0);
        this.genericDataTEClass = this.createEClass(15);
        this.createEAttribute(this.genericDataTEClass, 0);
        this.createEAttribute(this.genericDataTEClass, 1);
        this.iconTEClass = this.createEClass(16);
        this.createEReference(this.iconTEClass, 0);
        this.createEReference(this.iconTEClass, 1);
        this.createEAttribute(this.iconTEClass, 2);
        this.createEAttribute(this.iconTEClass, 3);
        this.intervalTEClass = this.createEClass(17);
        this.createEAttribute(this.intervalTEClass, 0);
        this.createEAttribute(this.intervalTEClass, 1);
        this.itemRefTEClass = this.createEClass(18);
        this.createEAttribute(this.itemRefTEClass, 0);
        this.createEAttribute(this.itemRefTEClass, 1);
        this.localTypeEClass = this.createEClass(19);
        this.createEAttribute(this.localTypeEClass, 0);
        this.createEAttribute(this.localTypeEClass, 1);
        this.logicDataTEClass = this.createEClass(20);
        this.createEAttribute(this.logicDataTEClass, 0);
        this.matrixTEClass = this.createEClass(21);
        this.createEReference(this.matrixTEClass, 2);
        this.notesTEClass = this.createEClass(22);
        this.createEReference(this.notesTEClass, 0);
        this.noteTypeEClass = this.createEClass(23);
        this.createEReference(this.noteTypeEClass, 0);
        this.createEReference(this.noteTypeEClass, 1);
        this.createEAttribute(this.noteTypeEClass, 2);
        this.numericDataTEClass = this.createEClass(24);
        this.createEAttribute(this.numericDataTEClass, 0);
        this.oneDTypeEClass = this.createEClass(25);
        this.createEReference(this.oneDTypeEClass, 2);
        this.createEReference(this.oneDTypeEClass, 3);
        this.createEReference(this.oneDTypeEClass, 4);
        this.createEAttribute(this.oneDTypeEClass, 5);
        this.createEAttribute(this.oneDTypeEClass, 6);
        this.createEAttribute(this.oneDTypeEClass, 7);
        this.optionTEClass = this.createEClass(26);
        this.createEAttribute(this.optionTEClass, 0);
        this.createEAttribute(this.optionTEClass, 1);
        this.createEAttribute(this.optionTEClass, 2);
        this.parameterTypeEClass = this.createEClass(27);
        this.createEAttribute(this.parameterTypeEClass, 0);
        this.createEAttribute(this.parameterTypeEClass, 1);
        this.createEAttribute(this.parameterTypeEClass, 2);
        this.createEAttribute(this.parameterTypeEClass, 3);
        this.pointTEClass = this.createEClass(28);
        this.createEAttribute(this.pointTEClass, 0);
        this.createEAttribute(this.pointTEClass, 1);
        this.referenceDataTEClass = this.createEClass(29);
        this.createEReference(this.referenceDataTEClass, 0);
        this.createEReference(this.referenceDataTEClass, 1);
        this.scalarTypeTEClass = this.createEClass(30);
        this.createEReference(this.scalarTypeTEClass, 0);
        this.createEReference(this.scalarTypeTEClass, 1);
        this.createEReference(this.scalarTypeTEClass, 2);
        this.sizeTEClass = this.createEClass(31);
        this.createEAttribute(this.sizeTEClass, 0);
        this.createEAttribute(this.sizeTEClass, 1);
        this.timeStampTEClass = this.createEClass(32);
        this.createEAttribute(this.timeStampTEClass, 0);
        this.createEAttribute(this.timeStampTEClass, 1);
        this.createEAttribute(this.timeStampTEClass, 2);
        this.twoDTypeEClass = this.createEClass(33);
        this.createEReference(this.twoDTypeEClass, 2);
        this.createEReference(this.twoDTypeEClass, 3);
        this.createEReference(this.twoDTypeEClass, 4);
        this.createEReference(this.twoDTypeEClass, 5);
        this.createEReference(this.twoDTypeEClass, 6);
        this.createEAttribute(this.twoDTypeEClass, 7);
        this.createEAttribute(this.twoDTypeEClass, 8);
        this.createEAttribute(this.twoDTypeEClass, 9);
        this.viewTypeEClass = this.createEClass(34);
        this.createEAttribute(this.viewTypeEClass, 0);
        this.curveKindTEEnum = this.createEEnum(35);
        this.extrapolationTypeEEnum = this.createEEnum(36);
        this.typeTypeEEnum = this.createEEnum(37);
        this.curveKindTObjectEDataType = this.createEDataType(38);
        this.extrapolationTypeObjectEDataType = this.createEDataType(39);
        this.numberOrFractionEDataType = this.createEDataType(40);
        this.numberOrFractionMember1EDataType = this.createEDataType(41);
        this.nzqrEDataType = this.createEDataType(42);
        this.nzqrMember2EDataType = this.createEDataType(43);
        this.oidEDataType = this.createEDataType(44);
        this.typeTypeObjectEDataType = this.createEDataType(45);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("ComponentData");
        this.setNsPrefix("ComponentData");
        this.setNsURI("http://www.etas.com/ascet/amd/620/component_data");
        XMLTypePackage theXMLTypePackage = (XMLTypePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2003/XMLType");
        XmldsigPackage theXmldsigPackage = (XmldsigPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#");
        this.arrayTEClass.getESuperTypes().add((Object)this.getDimensionalDataT());
        this.matrixTEClass.getESuperTypes().add((Object)this.getDimensionalDataT());
        this.oneDTypeEClass.getESuperTypes().add((Object)this.getDimensionalDataT());
        this.twoDTypeEClass.getESuperTypes().add((Object)this.getDimensionalDataT());
        this.initEClass(this.arrayTEClass, ArrayT.class, "ArrayT", false, false, true);
        this.initEReference(this.getArrayT_Value(), (EClassifier)this.getScalarTypeT(), null, "value", null, 0, -1, ArrayT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.colorTEClass, ColorT.class, "ColorT", false, false, true);
        this.initEAttribute(this.getColorT_Blue(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "blue", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getColorT_Green(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "green", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getColorT_Red(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "red", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.complexDataTEClass, ComplexDataT.class, "ComplexDataT", false, false, true);
        this.initEAttribute(this.getComplexDataT_Checksum(), (EClassifier)theXMLTypePackage.getHexBinary(), "checksum", null, 0, 1, ComplexDataT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComplexDataT_DataName(), (EClassifier)theXMLTypePackage.getString(), "dataName", null, 1, 1, ComplexDataT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComplexDataT_DataOID(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "dataOID", null, 0, 1, ComplexDataT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.componentDataTypeEClass, ComponentDataType.class, "ComponentDataType", false, false, true);
        this.initEReference(this.getComponentDataType_DataSet(), (EClassifier)this.getDataSetT(), null, "dataSet", null, 1, -1, ComponentDataType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getComponentDataType_Signature(), (EClassifier)theXmldsigPackage.getSignatureType(), null, "signature", null, 0, 1, ComponentDataType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getComponentDataType_SchemaVersion(), (EClassifier)theXMLTypePackage.getString(), "schemaVersion", null, 0, 1, ComponentDataType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getComponentDataType_ToolVersion(), (EClassifier)theXMLTypePackage.getString(), "toolVersion", null, 0, 1, ComponentDataType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.dataEntryTEClass, DataEntryT.class, "DataEntryT", false, false, true);
        this.initEReference(this.getDataEntryT_DataVariant(), (EClassifier)this.getDataVariantT(), null, "dataVariant", null, 1, 1, DataEntryT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataEntryT_CustomerData(), (EClassifier)this.getGenericDataT(), null, "customerData", null, 0, -1, DataEntryT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getDataEntryT_ElementName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "elementName", null, 1, 1, DataEntryT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDataEntryT_ElementOID(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "elementOID", null, 0, 1, DataEntryT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDataEntryT_Ignore(), (EClassifier)theXMLTypePackage.getString(), "ignore", "false", 0, 1, DataEntryT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.dataSetTEClass, DataSetT.class, "DataSetT", false, false, true);
        this.initEReference(this.getDataSetT_TimeStamp(), (EClassifier)this.getTimeStampT(), null, "timeStamp", null, 0, 1, DataSetT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataSetT_Notes(), (EClassifier)this.getNotesT(), null, "notes", null, 0, 1, DataSetT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataSetT_CustomerData(), (EClassifier)this.getGenericDataT(), null, "customerData", null, 0, -1, DataSetT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataSetT_DataEntry(), (EClassifier)this.getDataEntryT(), null, "dataEntry", null, 0, -1, DataSetT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getDataSetT_Checksum(), (EClassifier)theXMLTypePackage.getHexBinary(), "checksum", null, 0, 1, DataSetT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDataSetT_ClassConfig(), (EClassifier)theXMLTypePackage.getBoolean(), "classConfig", null, 1, 1, DataSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDataSetT_Default(), (EClassifier)theXMLTypePackage.getBoolean(), "default", null, 1, 1, DataSetT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDataSetT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, DataSetT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDataSetT_OID(), (EClassifier)this.getOID(), "oID", null, 0, 1, DataSetT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDataSetT_UUID(), (EClassifier)theXMLTypePackage.getString(), "uUID", null, 0, 1, DataSetT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.dataVariantTEClass, DataVariantT.class, "DataVariantT", false, false, true);
        this.initEReference(this.getDataVariantT_DimensionalType(), (EClassifier)this.getDimensionalTypeT(), null, "dimensionalType", null, 0, 1, DataVariantT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataVariantT_ScalarType(), (EClassifier)this.getScalarTypeT(), null, "scalarType", null, 0, 1, DataVariantT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataVariantT_ComplexType(), (EClassifier)this.getComplexDataT(), null, "complexType", null, 0, 1, DataVariantT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataVariantT_ReferenceType(), (EClassifier)this.getReferenceDataT(), null, "referenceType", null, 0, 1, DataVariantT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataVariantT_Dependency(), (EClassifier)this.getDependencyT(), null, "dependency", null, 0, 1, DataVariantT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataVariantT_DimensionalType1(), (EClassifier)this.getDimensionalTypeT(), null, "dimensionalType1", null, 0, 1, DataVariantT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataVariantT_ScalarType1(), (EClassifier)this.getScalarTypeT(), null, "scalarType1", null, 0, 1, DataVariantT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getDataVariantT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, DataVariantT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDataVariantT_OID(), (EClassifier)this.getOID(), "oID", null, 0, 1, DataVariantT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.dependencyTEClass, DependencyT.class, "DependencyT", false, false, true);
        this.initEReference(this.getDependencyT_Parameter(), (EClassifier)this.getParameterType(), null, "parameter", null, 0, -1, DependencyT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.dimensionalDataTEClass, DimensionalDataT.class, "DimensionalDataT", false, false, true);
        this.initEAttribute(this.getDimensionalDataT_CurrentSizeX(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "currentSizeX", null, 0, 1, DimensionalDataT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDimensionalDataT_CurrentSizeY(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "currentSizeY", null, 0, 1, DimensionalDataT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.dimensionalTypeTEClass, DimensionalTypeT.class, "DimensionalTypeT", false, false, true);
        this.initEReference(this.getDimensionalTypeT_OneD(), (EClassifier)this.getOneDType(), null, "oneD", null, 0, 1, DimensionalTypeT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDimensionalTypeT_TwoD(), (EClassifier)this.getTwoDType(), null, "twoD", null, 0, 1, DimensionalTypeT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDimensionalTypeT_Distribution(), (EClassifier)this.getArrayT(), null, "distribution", null, 0, 1, DimensionalTypeT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDimensionalTypeT_Array(), (EClassifier)this.getArrayT(), null, "array", null, 0, 1, DimensionalTypeT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDimensionalTypeT_Matrix(), (EClassifier)this.getMatrixT(), null, "matrix", null, 0, 1, DimensionalTypeT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.distributionInfoTEClass, DistributionInfoT.class, "DistributionInfoT", false, false, true);
        this.initEAttribute(this.getDistributionInfoT_ElementName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "elementName", null, 1, 1, DistributionInfoT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDistributionInfoT_ElementOID(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "elementOID", null, 0, 1, DistributionInfoT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.documentRootEClass, DocumentRoot.class, "DocumentRoot", false, false, true);
        this.initEAttribute(this.getDocumentRoot_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, null, false, false, true, false, false, false, false, true);
        this.initEReference(this.getDocumentRoot_XMLNSPrefixMap(), (EClassifier)this.ecorePackage.getEStringToStringMapEntry(), null, "xMLNSPrefixMap", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDocumentRoot_XSISchemaLocation(), (EClassifier)this.ecorePackage.getEStringToStringMapEntry(), null, "xSISchemaLocation", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDocumentRoot_ComponentData(), (EClassifier)this.getComponentDataType(), null, "componentData", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEClass(this.enumerationDataTEClass, EnumerationDataT.class, "EnumerationDataT", false, false, true);
        this.initEAttribute(this.getEnumerationDataT_Value(), (EClassifier)theXMLTypePackage.getString(), "value", null, 1, 1, EnumerationDataT.class, false, false, true, false, false, true, false, true);
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
        this.initEClass(this.intervalTEClass, IntervalT.class, "IntervalT", false, false, true);
        this.initEAttribute(this.getIntervalT_Max(), (EClassifier)this.getNzqr(), "max", null, 1, 1, IntervalT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getIntervalT_Min(), (EClassifier)this.getNzqr(), "min", null, 1, 1, IntervalT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.itemRefTEClass, ItemRefT.class, "ItemRefT", false, false, true);
        this.initEAttribute(this.getItemRefT_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, ItemRefT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getItemRefT_OID(), (EClassifier)this.getOID(), "oID", null, 0, 1, ItemRefT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.localTypeEClass, LocalType.class, "LocalType", false, false, true);
        this.initEAttribute(this.getLocalType_ElementName(), (EClassifier)theXMLTypePackage.getString(), "elementName", null, 1, 1, LocalType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getLocalType_ElementOID(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "elementOID", null, 0, 1, LocalType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.logicDataTEClass, LogicDataT.class, "LogicDataT", false, false, true);
        this.initEAttribute(this.getLogicDataT_Value(), (EClassifier)theXMLTypePackage.getBoolean(), "value", null, 1, 1, LogicDataT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.matrixTEClass, MatrixT.class, "MatrixT", false, false, true);
        this.initEReference(this.getMatrixT_Row(), (EClassifier)this.getArrayT(), null, "row", null, 1, -1, MatrixT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.notesTEClass, NotesT.class, "NotesT", false, false, true);
        this.initEReference(this.getNotesT_Note(), (EClassifier)this.getNoteType(), null, "note", null, 0, -1, NotesT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.noteTypeEClass, NoteType.class, "NoteType", false, false, true);
        this.initEReference(this.getNoteType_Text(), (EClassifier)this.getFormattedTextT(), null, "text", null, 0, 1, NoteType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getNoteType_View(), (EClassifier)this.getViewType(), null, "view", null, 0, -1, NoteType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getNoteType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 0, 1, NoteType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.numericDataTEClass, NumericDataT.class, "NumericDataT", false, false, true);
        this.initEAttribute(this.getNumericDataT_Value(), (EClassifier)this.getNzqr(), "value", null, 1, 1, NumericDataT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.oneDTypeEClass, OneDType.class, "OneDType", false, false, true);
        this.initEReference(this.getOneDType_XAxis(), (EClassifier)this.getArrayT(), null, "xAxis", null, 0, 1, OneDType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getOneDType_XDistribution(), (EClassifier)this.getDistributionInfoT(), null, "xDistribution", null, 0, 1, OneDType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getOneDType_Values(), (EClassifier)this.getArrayT(), null, "values", null, 1, 1, OneDType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getOneDType_Extrapolation(), (EClassifier)this.getExtrapolationType(), "extrapolation", null, 1, 1, OneDType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getOneDType_Interpolation(), (EClassifier)theXMLTypePackage.getString(), "interpolation", null, 1, 1, OneDType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOneDType_Type(), (EClassifier)this.getCurveKindT(), "type", null, 1, 1, OneDType.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.optionTEClass, OptionT.class, "OptionT", false, false, true);
        this.initEAttribute(this.getOptionT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOptionT_Type(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "type", null, 0, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOptionT_Value(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "value", null, 1, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.parameterTypeEClass, ParameterType.class, "ParameterType", false, false, true);
        this.initEAttribute(this.getParameterType_FormalName(), (EClassifier)theXMLTypePackage.getString(), "formalName", null, 1, 1, ParameterType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getParameterType_FormalOID(), (EClassifier)theXMLTypePackage.getString(), "formalOID", null, 0, 1, ParameterType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getParameterType_ValueName(), (EClassifier)theXMLTypePackage.getString(), "valueName", null, 0, 1, ParameterType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getParameterType_ValueOID(), (EClassifier)theXMLTypePackage.getString(), "valueOID", null, 0, 1, ParameterType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.pointTEClass, PointT.class, "PointT", false, false, true);
        this.initEAttribute(this.getPointT_X(), (EClassifier)theXMLTypePackage.getInteger(), "x", null, 1, 1, PointT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPointT_Y(), (EClassifier)theXMLTypePackage.getInteger(), "y", null, 1, 1, PointT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.referenceDataTEClass, ReferenceDataT.class, "ReferenceDataT", false, false, true);
        this.initEReference(this.getReferenceDataT_Local(), (EClassifier)this.getLocalType(), null, "local", null, 0, 1, ReferenceDataT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getReferenceDataT_External(), (EClassifier)this.ecorePackage.getEObject(), null, "external", null, 0, 1, ReferenceDataT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.scalarTypeTEClass, ScalarTypeT.class, "ScalarTypeT", false, false, true);
        this.initEReference(this.getScalarTypeT_Enumeration(), (EClassifier)this.getEnumerationDataT(), null, "enumeration", null, 0, 1, ScalarTypeT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getScalarTypeT_Numeric(), (EClassifier)this.getNumericDataT(), null, "numeric", null, 0, 1, ScalarTypeT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getScalarTypeT_Logic(), (EClassifier)this.getLogicDataT(), null, "logic", null, 0, 1, ScalarTypeT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.sizeTEClass, SizeT.class, "SizeT", false, false, true);
        this.initEAttribute(this.getSizeT_X(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "x", null, 1, 1, SizeT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getSizeT_Y(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "y", null, 1, 1, SizeT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.timeStampTEClass, TimeStampT.class, "TimeStampT", false, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampCounter(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "timeStampCounter", null, 0, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampKey(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "timeStampKey", null, 1, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampValue(), (EClassifier)theXMLTypePackage.getDateTime(), "timeStampValue", null, 1, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.twoDTypeEClass, TwoDType.class, "TwoDType", false, false, true);
        this.initEReference(this.getTwoDType_XAxis(), (EClassifier)this.getArrayT(), null, "xAxis", null, 0, 1, TwoDType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTwoDType_YAxis(), (EClassifier)this.getArrayT(), null, "yAxis", null, 0, 1, TwoDType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTwoDType_XDistribution(), (EClassifier)this.getDistributionInfoT(), null, "xDistribution", null, 0, 1, TwoDType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTwoDType_YDistribution(), (EClassifier)this.getDistributionInfoT(), null, "yDistribution", null, 0, 1, TwoDType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTwoDType_Values(), (EClassifier)this.getMatrixT(), null, "values", null, 1, 1, TwoDType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getTwoDType_Extrapolation(), (EClassifier)this.getExtrapolationType(), "extrapolation", null, 1, 1, TwoDType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTwoDType_Interpolation(), (EClassifier)theXMLTypePackage.getString(), "interpolation", null, 1, 1, TwoDType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTwoDType_Type(), (EClassifier)this.getCurveKindT(), "type", null, 1, 1, TwoDType.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.viewTypeEClass, ViewType.class, "ViewType", false, false, true);
        this.initEAttribute(this.getViewType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, ViewType.class, false, false, true, false, false, true, false, true);
        this.initEEnum(this.curveKindTEEnum, CurveKindT.class, "CurveKindT");
        this.addEEnumLiteral(this.curveKindTEEnum, CurveKindT.NORMAL);
        this.addEEnumLiteral(this.curveKindTEEnum, CurveKindT.FIXED);
        this.addEEnumLiteral(this.curveKindTEEnum, CurveKindT.GROUPED);
        this.initEEnum(this.extrapolationTypeEEnum, ExtrapolationType.class, "ExtrapolationType");
        this.addEEnumLiteral(this.extrapolationTypeEEnum, ExtrapolationType.CONSTANT);
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
        this.initEDataType(this.curveKindTObjectEDataType, CurveKindT.class, "CurveKindTObject", true, true);
        this.initEDataType(this.extrapolationTypeObjectEDataType, ExtrapolationType.class, "ExtrapolationTypeObject", true, true);
        this.initEDataType(this.numberOrFractionEDataType, Object.class, "NumberOrFraction", true, false);
        this.initEDataType(this.numberOrFractionMember1EDataType, String.class, "NumberOrFractionMember1", true, false);
        this.initEDataType(this.nzqrEDataType, Object.class, "Nzqr", true, false);
        this.initEDataType(this.nzqrMember2EDataType, String.class, "NzqrMember2", true, false);
        this.initEDataType(this.oidEDataType, String.class, "OID", true, false);
        this.initEDataType(this.typeTypeObjectEDataType, TypeType.class, "TypeTypeObject", true, true);
        this.createResource("http://www.etas.com/ascet/amd/620/component_data");
        this.createExtendedMetaDataAnnotations();
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.arrayTEClass, source, new String[]{"name", "ArrayT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getArrayT_Value(), source, new String[]{"kind", "element", "name", "Value", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.colorTEClass, source, new String[]{"name", "ColorT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getColorT_Blue(), source, new String[]{"kind", "attribute", "name", "blue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getColorT_Green(), source, new String[]{"kind", "attribute", "name", "green", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getColorT_Red(), source, new String[]{"kind", "attribute", "name", "red", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.complexDataTEClass, source, new String[]{"name", "ComplexDataT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getComplexDataT_Checksum(), source, new String[]{"kind", "attribute", "name", "checksum", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexDataT_DataName(), source, new String[]{"kind", "attribute", "name", "dataName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComplexDataT_DataOID(), source, new String[]{"kind", "attribute", "name", "dataOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.componentDataTypeEClass, source, new String[]{"name", "ComponentData_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getComponentDataType_DataSet(), source, new String[]{"kind", "element", "name", "DataSet", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentDataType_Signature(), source, new String[]{"kind", "element", "name", "Signature", "namespace", "http://www.w3.org/2000/09/xmldsig#"});
        this.addAnnotation((ENamedElement)this.getComponentDataType_SchemaVersion(), source, new String[]{"kind", "attribute", "name", "schemaVersion", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getComponentDataType_ToolVersion(), source, new String[]{"kind", "attribute", "name", "toolVersion", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.curveKindTEEnum, source, new String[]{"name", "CurveKindT"});
        this.addAnnotation((ENamedElement)this.curveKindTObjectEDataType, source, new String[]{"name", "CurveKindT:Object", "baseType", "CurveKindT"});
        this.addAnnotation((ENamedElement)this.dataEntryTEClass, source, new String[]{"name", "DataEntryT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getDataEntryT_DataVariant(), source, new String[]{"kind", "element", "name", "DataVariant", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataEntryT_CustomerData(), source, new String[]{"kind", "element", "name", "CustomerData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataEntryT_ElementName(), source, new String[]{"kind", "attribute", "name", "elementName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataEntryT_ElementOID(), source, new String[]{"kind", "attribute", "name", "elementOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataEntryT_Ignore(), source, new String[]{"kind", "attribute", "name", "ignore", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.dataSetTEClass, source, new String[]{"name", "DataSetT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getDataSetT_TimeStamp(), source, new String[]{"kind", "element", "name", "TimeStamp", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataSetT_Notes(), source, new String[]{"kind", "element", "name", "Notes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataSetT_CustomerData(), source, new String[]{"kind", "element", "name", "CustomerData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataSetT_DataEntry(), source, new String[]{"kind", "element", "name", "DataEntry", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataSetT_Checksum(), source, new String[]{"kind", "attribute", "name", "checksum", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataSetT_ClassConfig(), source, new String[]{"kind", "attribute", "name", "classConfig", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataSetT_Default(), source, new String[]{"kind", "attribute", "name", "default", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataSetT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataSetT_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataSetT_UUID(), source, new String[]{"kind", "attribute", "name", "UUID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.dataVariantTEClass, source, new String[]{"name", "DataVariantT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getDataVariantT_DimensionalType(), source, new String[]{"kind", "element", "name", "DimensionalType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataVariantT_ScalarType(), source, new String[]{"kind", "element", "name", "ScalarType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataVariantT_ComplexType(), source, new String[]{"kind", "element", "name", "ComplexType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataVariantT_ReferenceType(), source, new String[]{"kind", "element", "name", "ReferenceType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataVariantT_Dependency(), source, new String[]{"kind", "element", "name", "Dependency", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataVariantT_DimensionalType1(), source, new String[]{"kind", "element", "name", "DimensionalType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataVariantT_ScalarType1(), source, new String[]{"kind", "element", "name", "ScalarType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataVariantT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataVariantT_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.dependencyTEClass, source, new String[]{"name", "DependencyT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getDependencyT_Parameter(), source, new String[]{"kind", "element", "name", "Parameter", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.dimensionalDataTEClass, source, new String[]{"name", "DimensionalDataT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getDimensionalDataT_CurrentSizeX(), source, new String[]{"kind", "attribute", "name", "currentSizeX", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalDataT_CurrentSizeY(), source, new String[]{"kind", "attribute", "name", "currentSizeY", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.dimensionalTypeTEClass, source, new String[]{"name", "DimensionalTypeT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeT_OneD(), source, new String[]{"kind", "element", "name", "OneD", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeT_TwoD(), source, new String[]{"kind", "element", "name", "TwoD", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeT_Distribution(), source, new String[]{"kind", "element", "name", "Distribution", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeT_Array(), source, new String[]{"kind", "element", "name", "Array", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDimensionalTypeT_Matrix(), source, new String[]{"kind", "element", "name", "Matrix", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.distributionInfoTEClass, source, new String[]{"name", "DistributionInfoT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getDistributionInfoT_ElementName(), source, new String[]{"kind", "attribute", "name", "elementName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDistributionInfoT_ElementOID(), source, new String[]{"kind", "attribute", "name", "elementOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.documentRootEClass, source, new String[]{"name", "", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_XMLNSPrefixMap(), source, new String[]{"kind", "attribute", "name", "xmlns:prefix"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_XSISchemaLocation(), source, new String[]{"kind", "attribute", "name", "xsi:schemaLocation"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_ComponentData(), source, new String[]{"kind", "element", "name", "ComponentData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.enumerationDataTEClass, source, new String[]{"name", "EnumerationDataT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getEnumerationDataT_Value(), source, new String[]{"kind", "attribute", "name", "value", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.extrapolationTypeEEnum, source, new String[]{"name", "ExtrapolationType"});
        this.addAnnotation((ENamedElement)this.extrapolationTypeObjectEDataType, source, new String[]{"name", "ExtrapolationType:Object", "baseType", "ExtrapolationType"});
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
        this.addAnnotation((ENamedElement)this.intervalTEClass, source, new String[]{"name", "IntervalT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getIntervalT_Max(), source, new String[]{"kind", "attribute", "name", "max", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIntervalT_Min(), source, new String[]{"kind", "attribute", "name", "min", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.itemRefTEClass, source, new String[]{"name", "ItemRefT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getItemRefT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemRefT_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.localTypeEClass, source, new String[]{"name", "Local_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getLocalType_ElementName(), source, new String[]{"kind", "attribute", "name", "elementName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getLocalType_ElementOID(), source, new String[]{"kind", "attribute", "name", "elementOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.logicDataTEClass, source, new String[]{"name", "LogicDataT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getLogicDataT_Value(), source, new String[]{"kind", "attribute", "name", "value", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.matrixTEClass, source, new String[]{"name", "MatrixT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getMatrixT_Row(), source, new String[]{"kind", "element", "name", "Row", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.notesTEClass, source, new String[]{"name", "NotesT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getNotesT_Note(), source, new String[]{"kind", "element", "name", "Note", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.noteTypeEClass, source, new String[]{"name", "Note_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getNoteType_Text(), source, new String[]{"kind", "element", "name", "Text", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNoteType_View(), source, new String[]{"kind", "element", "name", "View", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNoteType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.numberOrFractionEDataType, source, new String[]{"name", "NumberOrFraction", "memberTypes", "http://www.eclipse.org/emf/2003/XMLType#double NumberOrFraction_._member_._1"});
        this.addAnnotation((ENamedElement)this.numberOrFractionMember1EDataType, source, new String[]{"name", "NumberOrFraction_._member_._1", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "pattern", "-?\\d*.?\\d*/\\d*\\.?\\d*"});
        this.addAnnotation((ENamedElement)this.numericDataTEClass, source, new String[]{"name", "NumericDataT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getNumericDataT_Value(), source, new String[]{"kind", "attribute", "name", "value", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.nzqrEDataType, source, new String[]{"name", "nzqr", "memberTypes", "http://www.eclipse.org/emf/2003/XMLType#double http://www.eclipse.org/emf/2003/XMLType#int nzqr_._member_._2"});
        this.addAnnotation((ENamedElement)this.nzqrMember2EDataType, source, new String[]{"name", "nzqr_._member_._2", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "pattern", "-?\\d*/\\d*"});
        this.addAnnotation((ENamedElement)this.oidEDataType, source, new String[]{"name", "OID", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "pattern", "(_040|_07v)\\w{26}|_sm"});
        this.addAnnotation((ENamedElement)this.oneDTypeEClass, source, new String[]{"name", "OneD_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getOneDType_XAxis(), source, new String[]{"kind", "element", "name", "XAxis", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOneDType_XDistribution(), source, new String[]{"kind", "element", "name", "XDistribution", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOneDType_Values(), source, new String[]{"kind", "element", "name", "Values", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOneDType_Extrapolation(), source, new String[]{"kind", "attribute", "name", "extrapolation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOneDType_Interpolation(), source, new String[]{"kind", "attribute", "name", "interpolation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOneDType_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.optionTEClass, source, new String[]{"name", "OptionT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getOptionT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOptionT_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOptionT_Value(), source, new String[]{"kind", "attribute", "name", "value", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.parameterTypeEClass, source, new String[]{"name", "Parameter_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getParameterType_FormalName(), source, new String[]{"kind", "attribute", "name", "formalName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getParameterType_FormalOID(), source, new String[]{"kind", "attribute", "name", "formalOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getParameterType_ValueName(), source, new String[]{"kind", "attribute", "name", "valueName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getParameterType_ValueOID(), source, new String[]{"kind", "attribute", "name", "valueOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.pointTEClass, source, new String[]{"name", "PointT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getPointT_X(), source, new String[]{"kind", "attribute", "name", "x", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPointT_Y(), source, new String[]{"kind", "attribute", "name", "y", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.referenceDataTEClass, source, new String[]{"name", "ReferenceDataT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getReferenceDataT_Local(), source, new String[]{"kind", "element", "name", "Local", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getReferenceDataT_External(), source, new String[]{"kind", "element", "name", "External", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.scalarTypeTEClass, source, new String[]{"name", "ScalarTypeT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getScalarTypeT_Enumeration(), source, new String[]{"kind", "element", "name", "Enumeration", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getScalarTypeT_Numeric(), source, new String[]{"kind", "element", "name", "Numeric", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getScalarTypeT_Logic(), source, new String[]{"kind", "element", "name", "Logic", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.sizeTEClass, source, new String[]{"name", "SizeT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getSizeT_X(), source, new String[]{"kind", "attribute", "name", "x", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSizeT_Y(), source, new String[]{"kind", "attribute", "name", "y", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.timeStampTEClass, source, new String[]{"name", "TimeStampT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampCounter(), source, new String[]{"kind", "attribute", "name", "timeStampCounter", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampKey(), source, new String[]{"kind", "attribute", "name", "timeStampKey", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampValue(), source, new String[]{"kind", "attribute", "name", "timeStampValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.twoDTypeEClass, source, new String[]{"name", "TwoD_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getTwoDType_XAxis(), source, new String[]{"kind", "element", "name", "XAxis", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTwoDType_YAxis(), source, new String[]{"kind", "element", "name", "YAxis", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTwoDType_XDistribution(), source, new String[]{"kind", "element", "name", "XDistribution", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTwoDType_YDistribution(), source, new String[]{"kind", "element", "name", "YDistribution", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTwoDType_Values(), source, new String[]{"kind", "element", "name", "Values", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTwoDType_Extrapolation(), source, new String[]{"kind", "attribute", "name", "extrapolation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTwoDType_Interpolation(), source, new String[]{"kind", "attribute", "name", "interpolation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTwoDType_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.typeTypeEEnum, source, new String[]{"name", "type_._type"});
        this.addAnnotation((ENamedElement)this.typeTypeObjectEDataType, source, new String[]{"name", "type_._type:Object", "baseType", "type_._type"});
        this.addAnnotation((ENamedElement)this.viewTypeEClass, source, new String[]{"name", "View_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getViewType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
    }
}

