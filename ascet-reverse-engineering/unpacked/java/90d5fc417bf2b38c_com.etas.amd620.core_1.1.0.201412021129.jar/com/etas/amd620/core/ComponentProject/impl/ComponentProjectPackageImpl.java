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
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.impl.ComponentDataPackageImpl;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.impl.ComponentImplementationPackageImpl;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.impl.ComponentMainPackageImpl;
import com.etas.amd620.core.ComponentProject.AlarmType;
import com.etas.amd620.core.ComponentProject.AssignedOperationModesType;
import com.etas.amd620.core.ComponentProject.BuildConfigurationType;
import com.etas.amd620.core.ComponentProject.BuildSettingsType;
import com.etas.amd620.core.ComponentProject.CodeGeneratorT;
import com.etas.amd620.core.ComponentProject.CodeGeneratorType;
import com.etas.amd620.core.ComponentProject.CodeVariantT;
import com.etas.amd620.core.ComponentProject.ColorT;
import com.etas.amd620.core.ComponentProject.CompilerType;
import com.etas.amd620.core.ComponentProject.ComponentProjectFactory;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.DataConfigurationType;
import com.etas.amd620.core.ComponentProject.DocumentRoot;
import com.etas.amd620.core.ComponentProject.ERCOSEKT;
import com.etas.amd620.core.ComponentProject.ElementInfoT;
import com.etas.amd620.core.ComponentProject.ExperimentTargetType;
import com.etas.amd620.core.ComponentProject.FileReferenceT;
import com.etas.amd620.core.ComponentProject.FileType;
import com.etas.amd620.core.ComponentProject.FilesType;
import com.etas.amd620.core.ComponentProject.FormattedTextT;
import com.etas.amd620.core.ComponentProject.GenericDataT;
import com.etas.amd620.core.ComponentProject.GroupType;
import com.etas.amd620.core.ComponentProject.GroupType1;
import com.etas.amd620.core.ComponentProject.IconT;
import com.etas.amd620.core.ComponentProject.ImplementationConfigurationType;
import com.etas.amd620.core.ComponentProject.InitType;
import com.etas.amd620.core.ComponentProject.InterruptType;
import com.etas.amd620.core.ComponentProject.IntervalT;
import com.etas.amd620.core.ComponentProject.ItemRefT;
import com.etas.amd620.core.ComponentProject.MessageTType;
import com.etas.amd620.core.ComponentProject.MessageTypeType;
import com.etas.amd620.core.ComponentProject.ModelConfigurationT;
import com.etas.amd620.core.ComponentProject.NoteType;
import com.etas.amd620.core.ComponentProject.NotesT;
import com.etas.amd620.core.ComponentProject.OSLogicT;
import com.etas.amd620.core.ComponentProject.OperatingSystemType;
import com.etas.amd620.core.ComponentProject.OperationModeT;
import com.etas.amd620.core.ComponentProject.OperationModeType;
import com.etas.amd620.core.ComponentProject.OperationModesType;
import com.etas.amd620.core.ComponentProject.OptionT;
import com.etas.amd620.core.ComponentProject.OsDescriptionType;
import com.etas.amd620.core.ComponentProject.OsEntryType;
import com.etas.amd620.core.ComponentProject.OsLogicType;
import com.etas.amd620.core.ComponentProject.OsSettingsType;
import com.etas.amd620.core.ComponentProject.PlatformType;
import com.etas.amd620.core.ComponentProject.PointT;
import com.etas.amd620.core.ComponentProject.PrePostHooksType;
import com.etas.amd620.core.ComponentProject.ProcessType;
import com.etas.amd620.core.ComponentProject.ProjectType;
import com.etas.amd620.core.ComponentProject.SchedulingType;
import com.etas.amd620.core.ComponentProject.SimulationConfigurationType;
import com.etas.amd620.core.ComponentProject.SizeT;
import com.etas.amd620.core.ComponentProject.SoftwareType;
import com.etas.amd620.core.ComponentProject.TargetKeyType;
import com.etas.amd620.core.ComponentProject.TargetType;
import com.etas.amd620.core.ComponentProject.TargetType1;
import com.etas.amd620.core.ComponentProject.TaskBaseT;
import com.etas.amd620.core.ComponentProject.TaskSwBaseT;
import com.etas.amd620.core.ComponentProject.TaskType;
import com.etas.amd620.core.ComponentProject.TaskTypeType;
import com.etas.amd620.core.ComponentProject.TasksType;
import com.etas.amd620.core.ComponentProject.TimeStampT;
import com.etas.amd620.core.ComponentProject.TimetableType;
import com.etas.amd620.core.ComponentProject.TransferOptionsType;
import com.etas.amd620.core.ComponentProject.TypeType;
import com.etas.amd620.core.ComponentProject.ViewType;
import com.etas.amd620.core.ComponentProject.util.ComponentProjectValidator;
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

public class ComponentProjectPackageImpl
extends EPackageImpl
implements ComponentProjectPackage {
    private EClass alarmTypeEClass = null;
    private EClass assignedOperationModesTypeEClass = null;
    private EClass buildConfigurationTypeEClass = null;
    private EClass buildSettingsTypeEClass = null;
    private EClass codeGeneratorTypeEClass = null;
    private EClass codeVariantTEClass = null;
    private EClass colorTEClass = null;
    private EClass compilerTypeEClass = null;
    private EClass dataConfigurationTypeEClass = null;
    private EClass documentRootEClass = null;
    private EClass elementInfoTEClass = null;
    private EClass ercosektEClass = null;
    private EClass fileReferenceTEClass = null;
    private EClass filesTypeEClass = null;
    private EClass fileTypeEClass = null;
    private EClass formattedTextTEClass = null;
    private EClass genericDataTEClass = null;
    private EClass groupTypeEClass = null;
    private EClass groupType1EClass = null;
    private EClass iconTEClass = null;
    private EClass implementationConfigurationTypeEClass = null;
    private EClass initTypeEClass = null;
    private EClass interruptTypeEClass = null;
    private EClass intervalTEClass = null;
    private EClass itemRefTEClass = null;
    private EClass messageTTypeEClass = null;
    private EClass messageTypeTypeEClass = null;
    private EClass modelConfigurationTEClass = null;
    private EClass notesTEClass = null;
    private EClass noteTypeEClass = null;
    private EClass operatingSystemTypeEClass = null;
    private EClass operationModesTypeEClass = null;
    private EClass operationModeTEClass = null;
    private EClass operationModeTypeEClass = null;
    private EClass optionTEClass = null;
    private EClass osDescriptionTypeEClass = null;
    private EClass osEntryTypeEClass = null;
    private EClass osLogicTEClass = null;
    private EClass osLogicTypeEClass = null;
    private EClass osSettingsTypeEClass = null;
    private EClass platformTypeEClass = null;
    private EClass pointTEClass = null;
    private EClass processTypeEClass = null;
    private EClass projectTypeEClass = null;
    private EClass simulationConfigurationTypeEClass = null;
    private EClass sizeTEClass = null;
    private EClass softwareTypeEClass = null;
    private EClass targetKeyTypeEClass = null;
    private EClass targetTypeEClass = null;
    private EClass targetType1EClass = null;
    private EClass taskBaseTEClass = null;
    private EClass tasksTypeEClass = null;
    private EClass taskSwBaseTEClass = null;
    private EClass taskTypeEClass = null;
    private EClass taskTypeTypeEClass = null;
    private EClass timeStampTEClass = null;
    private EClass timetableTypeEClass = null;
    private EClass transferOptionsTypeEClass = null;
    private EClass viewTypeEClass = null;
    private EEnum codeGeneratorTEEnum = null;
    private EEnum experimentTargetTypeEEnum = null;
    private EEnum prePostHooksTypeEEnum = null;
    private EEnum schedulingTypeEEnum = null;
    private EEnum typeTypeEEnum = null;
    private EDataType codeGeneratorTObjectEDataType = null;
    private EDataType experimentTargetTypeObjectEDataType = null;
    private EDataType numberOrFractionEDataType = null;
    private EDataType numberOrFractionMember1EDataType = null;
    private EDataType nzqrEDataType = null;
    private EDataType nzqrMember2EDataType = null;
    private EDataType oidEDataType = null;
    private EDataType prePostHooksTypeObjectEDataType = null;
    private EDataType schedulingTypeObjectEDataType = null;
    private EDataType typeTypeObjectEDataType = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ComponentProjectPackageImpl() {
        super("http://www.etas.com/ascet/amd/620/component_project", (EFactory)ComponentProjectFactory.eINSTANCE);
    }

    public static ComponentProjectPackage init() {
        if (isInited) {
            return (ComponentProjectPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project");
        }
        ComponentProjectPackageImpl theComponentProjectPackage = (ComponentProjectPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/component_project") instanceof ComponentProjectPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/component_project") : new ComponentProjectPackageImpl());
        isInited = true;
        XMLTypePackage.eINSTANCE.eClass();
        Amd620PackageImpl theAmd620Package = (Amd620PackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") instanceof Amd620PackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") : Amd620Package.eINSTANCE);
        ComponentMainPackageImpl theComponentMainPackage = (ComponentMainPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") instanceof ComponentMainPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") : ComponentMainPackage.eINSTANCE);
        ComponentDataPackageImpl theComponentDataPackage = (ComponentDataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") instanceof ComponentDataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") : ComponentDataPackage.eINSTANCE);
        ComponentImplementationPackageImpl theComponentImplementationPackage = (ComponentImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") instanceof ComponentImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") : ComponentImplementationPackage.eINSTANCE);
        ComponentSpecificationPackageImpl theComponentSpecificationPackage = (ComponentSpecificationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") instanceof ComponentSpecificationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") : ComponentSpecificationPackage.eINSTANCE);
        ImplementationtypesPackageImpl theImplementationtypesPackage = (ImplementationtypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") instanceof ImplementationtypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") : ImplementationtypesPackage.eINSTANCE);
        FormulasPackageImpl theFormulasPackage = (FormulasPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas") instanceof FormulasPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas") : FormulasPackage.eINSTANCE);
        XmldsigPackageImpl theXmldsigPackage = (XmldsigPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#") instanceof XmldsigPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#") : XmldsigPackage.eINSTANCE);
        theComponentSpecificationPackage.loadPackage();
        theComponentProjectPackage.createPackageContents();
        theAmd620Package.createPackageContents();
        theComponentMainPackage.createPackageContents();
        theComponentDataPackage.createPackageContents();
        theComponentImplementationPackage.createPackageContents();
        theImplementationtypesPackage.createPackageContents();
        theFormulasPackage.createPackageContents();
        theXmldsigPackage.createPackageContents();
        theComponentProjectPackage.initializePackageContents();
        theAmd620Package.initializePackageContents();
        theComponentMainPackage.initializePackageContents();
        theComponentDataPackage.initializePackageContents();
        theComponentImplementationPackage.initializePackageContents();
        theImplementationtypesPackage.initializePackageContents();
        theFormulasPackage.initializePackageContents();
        theXmldsigPackage.initializePackageContents();
        theComponentSpecificationPackage.fixPackageContents();
        EValidator.Registry.INSTANCE.put((Object)theComponentProjectPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return ComponentProjectValidator.INSTANCE;
            }
        });
        theComponentProjectPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://www.etas.com/ascet/amd/620/component_project", (Object)theComponentProjectPackage);
        return theComponentProjectPackage;
    }

    @Override
    public EClass getAlarmType() {
        return this.alarmTypeEClass;
    }

    @Override
    public EAttribute getAlarmType_Delay() {
        return (EAttribute)this.alarmTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getAlarmType_Period() {
        return (EAttribute)this.alarmTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getAlarmType_StartAlarm() {
        return (EAttribute)this.alarmTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getAssignedOperationModesType() {
        return this.assignedOperationModesTypeEClass;
    }

    @Override
    public EReference getAssignedOperationModesType_OperationMode() {
        return (EReference)this.assignedOperationModesTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getBuildConfigurationType() {
        return this.buildConfigurationTypeEClass;
    }

    @Override
    public EReference getBuildConfigurationType_Platform() {
        return (EReference)this.buildConfigurationTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getBuildConfigurationType_BuildSettings() {
        return (EReference)this.buildConfigurationTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getBuildConfigurationType_BuildConfigKey() {
        return (EAttribute)this.buildConfigurationTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getBuildConfigurationType_Checksum() {
        return (EAttribute)this.buildConfigurationTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getBuildConfigurationType_ChecksumCodeRelevant() {
        return (EAttribute)this.buildConfigurationTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getBuildConfigurationType_Name() {
        return (EAttribute)this.buildConfigurationTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getBuildSettingsType() {
        return this.buildSettingsTypeEClass;
    }

    @Override
    public EReference getBuildSettingsType_Group() {
        return (EReference)this.buildSettingsTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getCodeGeneratorType() {
        return this.codeGeneratorTypeEClass;
    }

    @Override
    public EAttribute getCodeGeneratorType_Type() {
        return (EAttribute)this.codeGeneratorTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getCodeVariantT() {
        return this.codeVariantTEClass;
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
    public EClass getCompilerType() {
        return this.compilerTypeEClass;
    }

    @Override
    public EAttribute getCompilerType_Name() {
        return (EAttribute)this.compilerTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getCompilerType_Path() {
        return (EAttribute)this.compilerTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getDataConfigurationType() {
        return this.dataConfigurationTypeEClass;
    }

    @Override
    public EAttribute getDataConfigurationType_DataSetName() {
        return (EAttribute)this.dataConfigurationTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getDataConfigurationType_DataSetOID() {
        return (EAttribute)this.dataConfigurationTypeEClass.getEStructuralFeatures().get(1);
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
    public EReference getDocumentRoot_Project() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getElementInfoT() {
        return this.elementInfoTEClass;
    }

    @Override
    public EAttribute getElementInfoT_ElementId() {
        return (EAttribute)this.elementInfoTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getElementInfoT_Name() {
        return (EAttribute)this.elementInfoTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getERCOSEKT() {
        return this.ercosektEClass;
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
    public EClass getFilesType() {
        return this.filesTypeEClass;
    }

    @Override
    public EReference getFilesType_Target() {
        return (EReference)this.filesTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getFileType() {
        return this.fileTypeEClass;
    }

    @Override
    public EAttribute getFileType_Name() {
        return (EAttribute)this.fileTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getFileType_Location() {
        return (EAttribute)this.fileTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getFileType_AbstractLocation() {
        return (EAttribute)this.fileTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getFileType_OriginalLocation() {
        return (EAttribute)this.fileTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getFileType_TimeStamp() {
        return (EAttribute)this.fileTypeEClass.getEStructuralFeatures().get(4);
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
    public EClass getGroupType() {
        return this.groupTypeEClass;
    }

    @Override
    public EReference getGroupType_Option() {
        return (EReference)this.groupTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getGroupType_Name() {
        return (EAttribute)this.groupTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getGroupType1() {
        return this.groupType1EClass;
    }

    @Override
    public EReference getGroupType1_Option() {
        return (EReference)this.groupType1EClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getGroupType1_Name() {
        return (EAttribute)this.groupType1EClass.getEStructuralFeatures().get(1);
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
    public EClass getImplementationConfigurationType() {
        return this.implementationConfigurationTypeEClass;
    }

    @Override
    public EAttribute getImplementationConfigurationType_ImplementationSetName() {
        return (EAttribute)this.implementationConfigurationTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getImplementationConfigurationType_ImplementationSetOID() {
        return (EAttribute)this.implementationConfigurationTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getInitType() {
        return this.initTypeEClass;
    }

    @Override
    public EClass getInterruptType() {
        return this.interruptTypeEClass;
    }

    @Override
    public EAttribute getInterruptType_EventId() {
        return (EAttribute)this.interruptTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getInterruptType_IsrSource() {
        return (EAttribute)this.interruptTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getInterruptType_MaxPrio() {
        return (EAttribute)this.interruptTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getInterruptType_MinimumPeriod() {
        return (EAttribute)this.interruptTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getInterruptType_MinimumPeriodValue() {
        return (EAttribute)this.interruptTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getInterruptType_MinPrio() {
        return (EAttribute)this.interruptTypeEClass.getEStructuralFeatures().get(5);
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
    public EClass getMessageTType() {
        return this.messageTTypeEClass;
    }

    @Override
    public EReference getMessageTType_MessageType() {
        return (EReference)this.messageTTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getMessageTypeType() {
        return this.messageTypeTypeEClass;
    }

    @Override
    public EAttribute getMessageTypeType_Label() {
        return (EAttribute)this.messageTypeTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getModelConfigurationT() {
        return this.modelConfigurationTEClass;
    }

    @Override
    public EReference getModelConfigurationT_FormulasFile() {
        return (EReference)this.modelConfigurationTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getModelConfigurationT_ImplementationTypesFile() {
        return (EReference)this.modelConfigurationTEClass.getEStructuralFeatures().get(1);
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
    public EClass getOperatingSystemType() {
        return this.operatingSystemTypeEClass;
    }

    @Override
    public EAttribute getOperatingSystemType_Type() {
        return (EAttribute)this.operatingSystemTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getOperationModesType() {
        return this.operationModesTypeEClass;
    }

    @Override
    public EReference getOperationModesType_OperationMode() {
        return (EReference)this.operationModesTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getOperationModeT() {
        return this.operationModeTEClass;
    }

    @Override
    public EAttribute getOperationModeT_Id() {
        return (EAttribute)this.operationModeTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getOperationModeT_IsCTMode() {
        return (EAttribute)this.operationModeTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getOperationModeT_IsStartMode() {
        return (EAttribute)this.operationModeTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getOperationModeT_Name() {
        return (EAttribute)this.operationModeTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getOperationModeType() {
        return this.operationModeTypeEClass;
    }

    @Override
    public EAttribute getOperationModeType_Name() {
        return (EAttribute)this.operationModeTypeEClass.getEStructuralFeatures().get(0);
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
    public EClass getOsDescriptionType() {
        return this.osDescriptionTypeEClass;
    }

    @Override
    public EReference getOsDescriptionType_OperationModes() {
        return (EReference)this.osDescriptionTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getOsDescriptionType_Tasks() {
        return (EReference)this.osDescriptionTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getOsDescriptionType_OsSettings() {
        return (EReference)this.osDescriptionTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getOsDescriptionType_CoopLevels() {
        return (EAttribute)this.osDescriptionTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getOsDescriptionType_EnableMonitoring() {
        return (EAttribute)this.osDescriptionTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getOsDescriptionType_EnableTickDuration() {
        return (EAttribute)this.osDescriptionTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getOsDescriptionType_EventLevels() {
        return (EAttribute)this.osDescriptionTypeEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getOsDescriptionType_OID() {
        return (EAttribute)this.osDescriptionTypeEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getOsDescriptionType_PreempLevels() {
        return (EAttribute)this.osDescriptionTypeEClass.getEStructuralFeatures().get(8);
    }

    @Override
    public EAttribute getOsDescriptionType_TickDuration() {
        return (EAttribute)this.osDescriptionTypeEClass.getEStructuralFeatures().get(9);
    }

    @Override
    public EClass getOsEntryType() {
        return this.osEntryTypeEClass;
    }

    @Override
    public EReference getOsEntryType_TargetKey() {
        return (EReference)this.osEntryTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getOsEntryType_OsDescription() {
        return (EReference)this.osEntryTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getOSLogicT() {
        return this.osLogicTEClass;
    }

    @Override
    public EReference getOSLogicT_OsEntry() {
        return (EReference)this.osLogicTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getOsLogicType() {
        return this.osLogicTypeEClass;
    }

    @Override
    public EClass getOsSettingsType() {
        return this.osSettingsTypeEClass;
    }

    @Override
    public EReference getOsSettingsType_Group() {
        return (EReference)this.osSettingsTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getPlatformType() {
        return this.platformTypeEClass;
    }

    @Override
    public EReference getPlatformType_Target() {
        return (EReference)this.platformTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getPlatformType_Compiler() {
        return (EReference)this.platformTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getPlatformType_CodeGenerator() {
        return (EReference)this.platformTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getPlatformType_OperatingSystem() {
        return (EReference)this.platformTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getPlatformType_PlatformKey() {
        return (EAttribute)this.platformTypeEClass.getEStructuralFeatures().get(4);
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
    public EClass getProcessType() {
        return this.processTypeEClass;
    }

    @Override
    public EAttribute getProcessType_Default() {
        return (EAttribute)this.processTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getProcessType_ElementName() {
        return (EAttribute)this.processTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getProcessType_ElementOID() {
        return (EAttribute)this.processTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getProcessType_Index() {
        return (EAttribute)this.processTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getProcessType_MethodName() {
        return (EAttribute)this.processTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getProcessType_MethodOID() {
        return (EAttribute)this.processTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getProjectType() {
        return this.projectTypeEClass;
    }

    @Override
    public EReference getProjectType_ImplementationConfiguration() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getProjectType_DataConfiguration() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getProjectType_OsLogic() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getProjectType_ModelConfiguration() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getProjectType_BuildConfiguration() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EReference getProjectType_SimulationConfiguration() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EReference getProjectType_HiddenMessageTypes() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EReference getProjectType_IgnoredMessageTypes() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EReference getProjectType_PromotedToErrorMessageTypes() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(8);
    }

    @Override
    public EReference getProjectType_PromotedToWarningMessageTypes() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(9);
    }

    @Override
    public EReference getProjectType_TransferOptions() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(10);
    }

    @Override
    public EReference getProjectType_Files() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(11);
    }

    @Override
    public EReference getProjectType_Signature() {
        return (EReference)this.projectTypeEClass.getEStructuralFeatures().get(12);
    }

    @Override
    public EAttribute getProjectType_BuildConfigKey() {
        return (EAttribute)this.projectTypeEClass.getEStructuralFeatures().get(13);
    }

    @Override
    public EAttribute getProjectType_SchemaVersion() {
        return (EAttribute)this.projectTypeEClass.getEStructuralFeatures().get(14);
    }

    @Override
    public EAttribute getProjectType_ToolVersion() {
        return (EAttribute)this.projectTypeEClass.getEStructuralFeatures().get(15);
    }

    @Override
    public EClass getSimulationConfigurationType() {
        return this.simulationConfigurationTypeEClass;
    }

    @Override
    public EAttribute getSimulationConfigurationType_ExperimentTarget() {
        return (EAttribute)this.simulationConfigurationTypeEClass.getEStructuralFeatures().get(0);
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
    public EClass getSoftwareType() {
        return this.softwareTypeEClass;
    }

    @Override
    public EAttribute getSoftwareType_Autostart() {
        return (EAttribute)this.softwareTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getTargetKeyType() {
        return this.targetKeyTypeEClass;
    }

    @Override
    public EAttribute getTargetKeyType_Name() {
        return (EAttribute)this.targetKeyTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getTargetType() {
        return this.targetTypeEClass;
    }

    @Override
    public EReference getTargetType_File() {
        return (EReference)this.targetTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTargetType_Key() {
        return (EAttribute)this.targetTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getTargetType1() {
        return this.targetType1EClass;
    }

    @Override
    public EAttribute getTargetType1_Key() {
        return (EAttribute)this.targetType1EClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTargetType1_Name() {
        return (EAttribute)this.targetType1EClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getTaskBaseT() {
        return this.taskBaseTEClass;
    }

    @Override
    public EAttribute getTaskBaseT_PrePostHooks() {
        return (EAttribute)this.taskBaseTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTaskBaseT_Priority() {
        return (EAttribute)this.taskBaseTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getTasksType() {
        return this.tasksTypeEClass;
    }

    @Override
    public EReference getTasksType_Task() {
        return (EReference)this.tasksTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getTaskSwBaseT() {
        return this.taskSwBaseTEClass;
    }

    @Override
    public EAttribute getTaskSwBaseT_Deadline() {
        return (EAttribute)this.taskSwBaseTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTaskSwBaseT_DeadlineValue() {
        return (EAttribute)this.taskSwBaseTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getTaskSwBaseT_MaxNoActivations() {
        return (EAttribute)this.taskSwBaseTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getTaskSwBaseT_Scheduling() {
        return (EAttribute)this.taskSwBaseTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getTaskType() {
        return this.taskTypeEClass;
    }

    @Override
    public EReference getTaskType_Process() {
        return (EReference)this.taskTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getTaskType_AssignedOperationModes() {
        return (EReference)this.taskTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getTaskType_TaskType() {
        return (EReference)this.taskTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getTaskType_Id() {
        return (EAttribute)this.taskTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getTaskType_IsContinuousTime() {
        return (EAttribute)this.taskTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getTaskType_Name() {
        return (EAttribute)this.taskTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getTaskTypeType() {
        return this.taskTypeTypeEClass;
    }

    @Override
    public EReference getTaskTypeType_Interrupt() {
        return (EReference)this.taskTypeTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getTaskTypeType_Alarm() {
        return (EReference)this.taskTypeTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getTaskTypeType_Timetable() {
        return (EReference)this.taskTypeTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getTaskTypeType_Software() {
        return (EReference)this.taskTypeTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getTaskTypeType_Init() {
        return (EReference)this.taskTypeTypeEClass.getEStructuralFeatures().get(4);
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
    public EClass getTimetableType() {
        return this.timetableTypeEClass;
    }

    @Override
    public EAttribute getTimetableType_Delay() {
        return (EAttribute)this.timetableTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTimetableType_Period() {
        return (EAttribute)this.timetableTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getTransferOptionsType() {
        return this.transferOptionsTypeEClass;
    }

    @Override
    public EReference getTransferOptionsType_Option() {
        return (EReference)this.transferOptionsTypeEClass.getEStructuralFeatures().get(0);
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
    public EEnum getCodeGeneratorT() {
        return this.codeGeneratorTEEnum;
    }

    @Override
    public EEnum getExperimentTargetType() {
        return this.experimentTargetTypeEEnum;
    }

    @Override
    public EEnum getPrePostHooksType() {
        return this.prePostHooksTypeEEnum;
    }

    @Override
    public EEnum getSchedulingType() {
        return this.schedulingTypeEEnum;
    }

    @Override
    public EEnum getTypeType() {
        return this.typeTypeEEnum;
    }

    @Override
    public EDataType getCodeGeneratorTObject() {
        return this.codeGeneratorTObjectEDataType;
    }

    @Override
    public EDataType getExperimentTargetTypeObject() {
        return this.experimentTargetTypeObjectEDataType;
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
    public EDataType getPrePostHooksTypeObject() {
        return this.prePostHooksTypeObjectEDataType;
    }

    @Override
    public EDataType getSchedulingTypeObject() {
        return this.schedulingTypeObjectEDataType;
    }

    @Override
    public EDataType getTypeTypeObject() {
        return this.typeTypeObjectEDataType;
    }

    @Override
    public ComponentProjectFactory getComponentProjectFactory() {
        return (ComponentProjectFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.alarmTypeEClass = this.createEClass(0);
        this.createEAttribute(this.alarmTypeEClass, 6);
        this.createEAttribute(this.alarmTypeEClass, 7);
        this.createEAttribute(this.alarmTypeEClass, 8);
        this.assignedOperationModesTypeEClass = this.createEClass(1);
        this.createEReference(this.assignedOperationModesTypeEClass, 0);
        this.buildConfigurationTypeEClass = this.createEClass(2);
        this.createEReference(this.buildConfigurationTypeEClass, 0);
        this.createEReference(this.buildConfigurationTypeEClass, 1);
        this.createEAttribute(this.buildConfigurationTypeEClass, 2);
        this.createEAttribute(this.buildConfigurationTypeEClass, 3);
        this.createEAttribute(this.buildConfigurationTypeEClass, 4);
        this.createEAttribute(this.buildConfigurationTypeEClass, 5);
        this.buildSettingsTypeEClass = this.createEClass(3);
        this.createEReference(this.buildSettingsTypeEClass, 0);
        this.codeGeneratorTypeEClass = this.createEClass(4);
        this.createEAttribute(this.codeGeneratorTypeEClass, 0);
        this.codeVariantTEClass = this.createEClass(5);
        this.colorTEClass = this.createEClass(6);
        this.createEAttribute(this.colorTEClass, 0);
        this.createEAttribute(this.colorTEClass, 1);
        this.createEAttribute(this.colorTEClass, 2);
        this.compilerTypeEClass = this.createEClass(7);
        this.createEAttribute(this.compilerTypeEClass, 0);
        this.createEAttribute(this.compilerTypeEClass, 1);
        this.dataConfigurationTypeEClass = this.createEClass(8);
        this.createEAttribute(this.dataConfigurationTypeEClass, 0);
        this.createEAttribute(this.dataConfigurationTypeEClass, 1);
        this.documentRootEClass = this.createEClass(9);
        this.createEAttribute(this.documentRootEClass, 0);
        this.createEReference(this.documentRootEClass, 1);
        this.createEReference(this.documentRootEClass, 2);
        this.createEReference(this.documentRootEClass, 3);
        this.elementInfoTEClass = this.createEClass(10);
        this.createEAttribute(this.elementInfoTEClass, 0);
        this.createEAttribute(this.elementInfoTEClass, 1);
        this.ercosektEClass = this.createEClass(11);
        this.fileReferenceTEClass = this.createEClass(12);
        this.createEAttribute(this.fileReferenceTEClass, 0);
        this.createEAttribute(this.fileReferenceTEClass, 1);
        this.createEAttribute(this.fileReferenceTEClass, 2);
        this.filesTypeEClass = this.createEClass(13);
        this.createEReference(this.filesTypeEClass, 0);
        this.fileTypeEClass = this.createEClass(14);
        this.createEAttribute(this.fileTypeEClass, 0);
        this.createEAttribute(this.fileTypeEClass, 1);
        this.createEAttribute(this.fileTypeEClass, 2);
        this.createEAttribute(this.fileTypeEClass, 3);
        this.createEAttribute(this.fileTypeEClass, 4);
        this.formattedTextTEClass = this.createEClass(15);
        this.createEAttribute(this.formattedTextTEClass, 0);
        this.genericDataTEClass = this.createEClass(16);
        this.createEAttribute(this.genericDataTEClass, 0);
        this.createEAttribute(this.genericDataTEClass, 1);
        this.groupTypeEClass = this.createEClass(17);
        this.createEReference(this.groupTypeEClass, 0);
        this.createEAttribute(this.groupTypeEClass, 1);
        this.groupType1EClass = this.createEClass(18);
        this.createEReference(this.groupType1EClass, 0);
        this.createEAttribute(this.groupType1EClass, 1);
        this.iconTEClass = this.createEClass(19);
        this.createEReference(this.iconTEClass, 0);
        this.createEReference(this.iconTEClass, 1);
        this.createEAttribute(this.iconTEClass, 2);
        this.createEAttribute(this.iconTEClass, 3);
        this.implementationConfigurationTypeEClass = this.createEClass(20);
        this.createEAttribute(this.implementationConfigurationTypeEClass, 0);
        this.createEAttribute(this.implementationConfigurationTypeEClass, 1);
        this.initTypeEClass = this.createEClass(21);
        this.interruptTypeEClass = this.createEClass(22);
        this.createEAttribute(this.interruptTypeEClass, 2);
        this.createEAttribute(this.interruptTypeEClass, 3);
        this.createEAttribute(this.interruptTypeEClass, 4);
        this.createEAttribute(this.interruptTypeEClass, 5);
        this.createEAttribute(this.interruptTypeEClass, 6);
        this.createEAttribute(this.interruptTypeEClass, 7);
        this.intervalTEClass = this.createEClass(23);
        this.createEAttribute(this.intervalTEClass, 0);
        this.createEAttribute(this.intervalTEClass, 1);
        this.itemRefTEClass = this.createEClass(24);
        this.createEAttribute(this.itemRefTEClass, 0);
        this.createEAttribute(this.itemRefTEClass, 1);
        this.messageTTypeEClass = this.createEClass(25);
        this.createEReference(this.messageTTypeEClass, 0);
        this.messageTypeTypeEClass = this.createEClass(26);
        this.createEAttribute(this.messageTypeTypeEClass, 0);
        this.modelConfigurationTEClass = this.createEClass(27);
        this.createEReference(this.modelConfigurationTEClass, 0);
        this.createEReference(this.modelConfigurationTEClass, 1);
        this.notesTEClass = this.createEClass(28);
        this.createEReference(this.notesTEClass, 0);
        this.noteTypeEClass = this.createEClass(29);
        this.createEReference(this.noteTypeEClass, 0);
        this.createEReference(this.noteTypeEClass, 1);
        this.createEAttribute(this.noteTypeEClass, 2);
        this.operatingSystemTypeEClass = this.createEClass(30);
        this.createEAttribute(this.operatingSystemTypeEClass, 0);
        this.operationModesTypeEClass = this.createEClass(31);
        this.createEReference(this.operationModesTypeEClass, 0);
        this.operationModeTEClass = this.createEClass(32);
        this.createEAttribute(this.operationModeTEClass, 0);
        this.createEAttribute(this.operationModeTEClass, 1);
        this.createEAttribute(this.operationModeTEClass, 2);
        this.createEAttribute(this.operationModeTEClass, 3);
        this.operationModeTypeEClass = this.createEClass(33);
        this.createEAttribute(this.operationModeTypeEClass, 0);
        this.optionTEClass = this.createEClass(34);
        this.createEAttribute(this.optionTEClass, 0);
        this.createEAttribute(this.optionTEClass, 1);
        this.createEAttribute(this.optionTEClass, 2);
        this.osDescriptionTypeEClass = this.createEClass(35);
        this.createEReference(this.osDescriptionTypeEClass, 0);
        this.createEReference(this.osDescriptionTypeEClass, 1);
        this.createEReference(this.osDescriptionTypeEClass, 2);
        this.createEAttribute(this.osDescriptionTypeEClass, 3);
        this.createEAttribute(this.osDescriptionTypeEClass, 4);
        this.createEAttribute(this.osDescriptionTypeEClass, 5);
        this.createEAttribute(this.osDescriptionTypeEClass, 6);
        this.createEAttribute(this.osDescriptionTypeEClass, 7);
        this.createEAttribute(this.osDescriptionTypeEClass, 8);
        this.createEAttribute(this.osDescriptionTypeEClass, 9);
        this.osEntryTypeEClass = this.createEClass(36);
        this.createEReference(this.osEntryTypeEClass, 0);
        this.createEReference(this.osEntryTypeEClass, 1);
        this.osLogicTEClass = this.createEClass(37);
        this.createEReference(this.osLogicTEClass, 0);
        this.osLogicTypeEClass = this.createEClass(38);
        this.osSettingsTypeEClass = this.createEClass(39);
        this.createEReference(this.osSettingsTypeEClass, 0);
        this.platformTypeEClass = this.createEClass(40);
        this.createEReference(this.platformTypeEClass, 0);
        this.createEReference(this.platformTypeEClass, 1);
        this.createEReference(this.platformTypeEClass, 2);
        this.createEReference(this.platformTypeEClass, 3);
        this.createEAttribute(this.platformTypeEClass, 4);
        this.pointTEClass = this.createEClass(41);
        this.createEAttribute(this.pointTEClass, 0);
        this.createEAttribute(this.pointTEClass, 1);
        this.processTypeEClass = this.createEClass(42);
        this.createEAttribute(this.processTypeEClass, 0);
        this.createEAttribute(this.processTypeEClass, 1);
        this.createEAttribute(this.processTypeEClass, 2);
        this.createEAttribute(this.processTypeEClass, 3);
        this.createEAttribute(this.processTypeEClass, 4);
        this.createEAttribute(this.processTypeEClass, 5);
        this.projectTypeEClass = this.createEClass(43);
        this.createEReference(this.projectTypeEClass, 0);
        this.createEReference(this.projectTypeEClass, 1);
        this.createEReference(this.projectTypeEClass, 2);
        this.createEReference(this.projectTypeEClass, 3);
        this.createEReference(this.projectTypeEClass, 4);
        this.createEReference(this.projectTypeEClass, 5);
        this.createEReference(this.projectTypeEClass, 6);
        this.createEReference(this.projectTypeEClass, 7);
        this.createEReference(this.projectTypeEClass, 8);
        this.createEReference(this.projectTypeEClass, 9);
        this.createEReference(this.projectTypeEClass, 10);
        this.createEReference(this.projectTypeEClass, 11);
        this.createEReference(this.projectTypeEClass, 12);
        this.createEAttribute(this.projectTypeEClass, 13);
        this.createEAttribute(this.projectTypeEClass, 14);
        this.createEAttribute(this.projectTypeEClass, 15);
        this.simulationConfigurationTypeEClass = this.createEClass(44);
        this.createEAttribute(this.simulationConfigurationTypeEClass, 0);
        this.sizeTEClass = this.createEClass(45);
        this.createEAttribute(this.sizeTEClass, 0);
        this.createEAttribute(this.sizeTEClass, 1);
        this.softwareTypeEClass = this.createEClass(46);
        this.createEAttribute(this.softwareTypeEClass, 6);
        this.targetKeyTypeEClass = this.createEClass(47);
        this.createEAttribute(this.targetKeyTypeEClass, 0);
        this.targetTypeEClass = this.createEClass(48);
        this.createEReference(this.targetTypeEClass, 0);
        this.createEAttribute(this.targetTypeEClass, 1);
        this.targetType1EClass = this.createEClass(49);
        this.createEAttribute(this.targetType1EClass, 0);
        this.createEAttribute(this.targetType1EClass, 1);
        this.taskBaseTEClass = this.createEClass(50);
        this.createEAttribute(this.taskBaseTEClass, 0);
        this.createEAttribute(this.taskBaseTEClass, 1);
        this.tasksTypeEClass = this.createEClass(51);
        this.createEReference(this.tasksTypeEClass, 0);
        this.taskSwBaseTEClass = this.createEClass(52);
        this.createEAttribute(this.taskSwBaseTEClass, 2);
        this.createEAttribute(this.taskSwBaseTEClass, 3);
        this.createEAttribute(this.taskSwBaseTEClass, 4);
        this.createEAttribute(this.taskSwBaseTEClass, 5);
        this.taskTypeEClass = this.createEClass(53);
        this.createEReference(this.taskTypeEClass, 0);
        this.createEReference(this.taskTypeEClass, 1);
        this.createEReference(this.taskTypeEClass, 2);
        this.createEAttribute(this.taskTypeEClass, 3);
        this.createEAttribute(this.taskTypeEClass, 4);
        this.createEAttribute(this.taskTypeEClass, 5);
        this.taskTypeTypeEClass = this.createEClass(54);
        this.createEReference(this.taskTypeTypeEClass, 0);
        this.createEReference(this.taskTypeTypeEClass, 1);
        this.createEReference(this.taskTypeTypeEClass, 2);
        this.createEReference(this.taskTypeTypeEClass, 3);
        this.createEReference(this.taskTypeTypeEClass, 4);
        this.timeStampTEClass = this.createEClass(55);
        this.createEAttribute(this.timeStampTEClass, 0);
        this.createEAttribute(this.timeStampTEClass, 1);
        this.createEAttribute(this.timeStampTEClass, 2);
        this.timetableTypeEClass = this.createEClass(56);
        this.createEAttribute(this.timetableTypeEClass, 6);
        this.createEAttribute(this.timetableTypeEClass, 7);
        this.transferOptionsTypeEClass = this.createEClass(57);
        this.createEReference(this.transferOptionsTypeEClass, 0);
        this.viewTypeEClass = this.createEClass(58);
        this.createEAttribute(this.viewTypeEClass, 0);
        this.codeGeneratorTEEnum = this.createEEnum(59);
        this.experimentTargetTypeEEnum = this.createEEnum(60);
        this.prePostHooksTypeEEnum = this.createEEnum(61);
        this.schedulingTypeEEnum = this.createEEnum(62);
        this.typeTypeEEnum = this.createEEnum(63);
        this.codeGeneratorTObjectEDataType = this.createEDataType(64);
        this.experimentTargetTypeObjectEDataType = this.createEDataType(65);
        this.numberOrFractionEDataType = this.createEDataType(66);
        this.numberOrFractionMember1EDataType = this.createEDataType(67);
        this.nzqrEDataType = this.createEDataType(68);
        this.nzqrMember2EDataType = this.createEDataType(69);
        this.oidEDataType = this.createEDataType(70);
        this.prePostHooksTypeObjectEDataType = this.createEDataType(71);
        this.schedulingTypeObjectEDataType = this.createEDataType(72);
        this.typeTypeObjectEDataType = this.createEDataType(73);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("ComponentProject");
        this.setNsPrefix("ComponentProject");
        this.setNsURI("http://www.etas.com/ascet/amd/620/component_project");
        XMLTypePackage theXMLTypePackage = (XMLTypePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2003/XMLType");
        XmldsigPackage theXmldsigPackage = (XmldsigPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#");
        this.alarmTypeEClass.getESuperTypes().add((Object)this.getTaskSwBaseT());
        this.interruptTypeEClass.getESuperTypes().add((Object)this.getTaskBaseT());
        this.osLogicTypeEClass.getESuperTypes().add((Object)this.getOSLogicT());
        this.softwareTypeEClass.getESuperTypes().add((Object)this.getTaskSwBaseT());
        this.taskSwBaseTEClass.getESuperTypes().add((Object)this.getTaskBaseT());
        this.timetableTypeEClass.getESuperTypes().add((Object)this.getTaskSwBaseT());
        this.initEClass(this.alarmTypeEClass, AlarmType.class, "AlarmType", false, false, true);
        this.initEAttribute(this.getAlarmType_Delay(), (EClassifier)this.getNzqr(), "delay", null, 1, 1, AlarmType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getAlarmType_Period(), (EClassifier)theXMLTypePackage.getDouble(), "period", null, 1, 1, AlarmType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAlarmType_StartAlarm(), (EClassifier)theXMLTypePackage.getBoolean(), "startAlarm", null, 1, 1, AlarmType.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.assignedOperationModesTypeEClass, AssignedOperationModesType.class, "AssignedOperationModesType", false, false, true);
        this.initEReference(this.getAssignedOperationModesType_OperationMode(), (EClassifier)this.getOperationModeType(), null, "operationMode", null, 0, -1, AssignedOperationModesType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.buildConfigurationTypeEClass, BuildConfigurationType.class, "BuildConfigurationType", false, false, true);
        this.initEReference(this.getBuildConfigurationType_Platform(), (EClassifier)this.getPlatformType(), null, "platform", null, 1, 1, BuildConfigurationType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getBuildConfigurationType_BuildSettings(), (EClassifier)this.getBuildSettingsType(), null, "buildSettings", null, 1, 1, BuildConfigurationType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getBuildConfigurationType_BuildConfigKey(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "buildConfigKey", null, 1, 1, BuildConfigurationType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getBuildConfigurationType_Checksum(), (EClassifier)theXMLTypePackage.getHexBinary(), "checksum", null, 0, 1, BuildConfigurationType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getBuildConfigurationType_ChecksumCodeRelevant(), (EClassifier)theXMLTypePackage.getHexBinary(), "checksumCodeRelevant", null, 0, 1, BuildConfigurationType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getBuildConfigurationType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", "default", 0, 1, BuildConfigurationType.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.buildSettingsTypeEClass, BuildSettingsType.class, "BuildSettingsType", false, false, true);
        this.initEReference(this.getBuildSettingsType_Group(), (EClassifier)this.getGroupType(), null, "group", null, 0, -1, BuildSettingsType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.codeGeneratorTypeEClass, CodeGeneratorType.class, "CodeGeneratorType", false, false, true);
        this.initEAttribute(this.getCodeGeneratorType_Type(), (EClassifier)this.getCodeGeneratorT(), "type", null, 1, 1, CodeGeneratorType.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.codeVariantTEClass, CodeVariantT.class, "CodeVariantT", false, false, true);
        this.initEClass(this.colorTEClass, ColorT.class, "ColorT", false, false, true);
        this.initEAttribute(this.getColorT_Blue(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "blue", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getColorT_Green(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "green", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getColorT_Red(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "red", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.compilerTypeEClass, CompilerType.class, "CompilerType", false, false, true);
        this.initEAttribute(this.getCompilerType_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, CompilerType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getCompilerType_Path(), (EClassifier)theXMLTypePackage.getString(), "path", null, 1, 1, CompilerType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.dataConfigurationTypeEClass, DataConfigurationType.class, "DataConfigurationType", false, false, true);
        this.initEAttribute(this.getDataConfigurationType_DataSetName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "dataSetName", null, 1, 1, DataConfigurationType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDataConfigurationType_DataSetOID(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "dataSetOID", null, 0, 1, DataConfigurationType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.documentRootEClass, DocumentRoot.class, "DocumentRoot", false, false, true);
        this.initEAttribute(this.getDocumentRoot_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, null, false, false, true, false, false, false, false, true);
        this.initEReference(this.getDocumentRoot_XMLNSPrefixMap(), (EClassifier)this.ecorePackage.getEStringToStringMapEntry(), null, "xMLNSPrefixMap", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDocumentRoot_XSISchemaLocation(), (EClassifier)this.ecorePackage.getEStringToStringMapEntry(), null, "xSISchemaLocation", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDocumentRoot_Project(), (EClassifier)this.getProjectType(), null, "project", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEClass(this.elementInfoTEClass, ElementInfoT.class, "ElementInfoT", false, false, true);
        this.initEAttribute(this.getElementInfoT_ElementId(), (EClassifier)theXMLTypePackage.getString(), "elementId", null, 0, 1, ElementInfoT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getElementInfoT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, ElementInfoT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.ercosektEClass, ERCOSEKT.class, "ERCOSEKT", false, false, true);
        this.initEClass(this.fileReferenceTEClass, FileReferenceT.class, "FileReferenceT", false, false, true);
        this.initEAttribute(this.getFileReferenceT_Value(), (EClassifier)theXMLTypePackage.getString(), "value", null, 0, 1, FileReferenceT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFileReferenceT_Checksum(), (EClassifier)theXMLTypePackage.getHexBinary(), "checksum", null, 0, 1, FileReferenceT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFileReferenceT_Type(), (EClassifier)this.getTypeType(), "type", null, 1, 1, FileReferenceT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.filesTypeEClass, FilesType.class, "FilesType", false, false, true);
        this.initEReference(this.getFilesType_Target(), (EClassifier)this.getTargetType(), null, "target", null, 1, -1, FilesType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.fileTypeEClass, FileType.class, "FileType", false, false, true);
        this.initEAttribute(this.getFileType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, FileType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFileType_Location(), (EClassifier)theXMLTypePackage.getString(), "location", null, 1, 1, FileType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFileType_AbstractLocation(), (EClassifier)theXMLTypePackage.getString(), "abstractLocation", null, 0, 1, FileType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFileType_OriginalLocation(), (EClassifier)theXMLTypePackage.getString(), "originalLocation", null, 0, 1, FileType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFileType_TimeStamp(), (EClassifier)theXMLTypePackage.getDateTime(), "timeStamp", null, 0, 1, FileType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.formattedTextTEClass, FormattedTextT.class, "FormattedTextT", false, false, true);
        this.initEAttribute(this.getFormattedTextT_Value(), (EClassifier)theXMLTypePackage.getString(), "value", null, 0, 1, FormattedTextT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.genericDataTEClass, GenericDataT.class, "GenericDataT", false, false, true);
        this.initEAttribute(this.getGenericDataT_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 1, -1, GenericDataT.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getGenericDataT_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 0, 1, GenericDataT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.groupTypeEClass, GroupType.class, "GroupType", false, false, true);
        this.initEReference(this.getGroupType_Option(), (EClassifier)this.getOptionT(), null, "option", null, 0, -1, GroupType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getGroupType_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, GroupType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.groupType1EClass, GroupType1.class, "GroupType1", false, false, true);
        this.initEReference(this.getGroupType1_Option(), (EClassifier)this.getOptionT(), null, "option", null, 0, -1, GroupType1.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getGroupType1_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, GroupType1.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.iconTEClass, IconT.class, "IconT", false, false, true);
        this.initEReference(this.getIconT_IconFile(), (EClassifier)this.getFileReferenceT(), null, "iconFile", null, 0, 1, IconT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getIconT_Size(), (EClassifier)this.getSizeT(), null, "size", null, 1, 1, IconT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getIconT_IconName(), (EClassifier)theXMLTypePackage.getString(), "iconName", null, 0, 1, IconT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getIconT_IconOID(), (EClassifier)this.getOID(), "iconOID", null, 0, 1, IconT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.implementationConfigurationTypeEClass, ImplementationConfigurationType.class, "ImplementationConfigurationType", false, false, true);
        this.initEAttribute(this.getImplementationConfigurationType_ImplementationSetName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "implementationSetName", null, 1, 1, ImplementationConfigurationType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getImplementationConfigurationType_ImplementationSetOID(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "implementationSetOID", null, 0, 1, ImplementationConfigurationType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.initTypeEClass, InitType.class, "InitType", false, false, true);
        this.initEClass(this.interruptTypeEClass, InterruptType.class, "InterruptType", false, false, true);
        this.initEAttribute(this.getInterruptType_EventId(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "eventId", null, 1, 1, InterruptType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getInterruptType_IsrSource(), (EClassifier)theXMLTypePackage.getString(), "isrSource", null, 1, 1, InterruptType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getInterruptType_MaxPrio(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "maxPrio", null, 1, 1, InterruptType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getInterruptType_MinimumPeriod(), (EClassifier)theXMLTypePackage.getBoolean(), "minimumPeriod", null, 1, 1, InterruptType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getInterruptType_MinimumPeriodValue(), (EClassifier)theXMLTypePackage.getDouble(), "minimumPeriodValue", null, 1, 1, InterruptType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getInterruptType_MinPrio(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "minPrio", null, 1, 1, InterruptType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.intervalTEClass, IntervalT.class, "IntervalT", false, false, true);
        this.initEAttribute(this.getIntervalT_Max(), (EClassifier)this.getNzqr(), "max", null, 1, 1, IntervalT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getIntervalT_Min(), (EClassifier)this.getNzqr(), "min", null, 1, 1, IntervalT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.itemRefTEClass, ItemRefT.class, "ItemRefT", false, false, true);
        this.initEAttribute(this.getItemRefT_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, ItemRefT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getItemRefT_OID(), (EClassifier)this.getOID(), "oID", null, 0, 1, ItemRefT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.messageTTypeEClass, MessageTType.class, "MessageTType", false, false, true);
        this.initEReference(this.getMessageTType_MessageType(), (EClassifier)this.getMessageTypeType(), null, "messageType", null, 0, -1, MessageTType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.messageTypeTypeEClass, MessageTypeType.class, "MessageTypeType", false, false, true);
        this.initEAttribute(this.getMessageTypeType_Label(), (EClassifier)theXMLTypePackage.getString(), "label", null, 1, 1, MessageTypeType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.modelConfigurationTEClass, ModelConfigurationT.class, "ModelConfigurationT", false, false, true);
        this.initEReference(this.getModelConfigurationT_FormulasFile(), (EClassifier)this.getFileReferenceT(), null, "formulasFile", null, 0, 1, ModelConfigurationT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getModelConfigurationT_ImplementationTypesFile(), (EClassifier)this.getFileReferenceT(), null, "implementationTypesFile", null, 0, 1, ModelConfigurationT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.notesTEClass, NotesT.class, "NotesT", false, false, true);
        this.initEReference(this.getNotesT_Note(), (EClassifier)this.getNoteType(), null, "note", null, 0, -1, NotesT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.noteTypeEClass, NoteType.class, "NoteType", false, false, true);
        this.initEReference(this.getNoteType_Text(), (EClassifier)this.getFormattedTextT(), null, "text", null, 0, 1, NoteType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getNoteType_View(), (EClassifier)this.getViewType(), null, "view", null, 0, -1, NoteType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getNoteType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 0, 1, NoteType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.operatingSystemTypeEClass, OperatingSystemType.class, "OperatingSystemType", false, false, true);
        this.initEAttribute(this.getOperatingSystemType_Type(), (EClassifier)theXMLTypePackage.getString(), "type", null, 1, 1, OperatingSystemType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.operationModesTypeEClass, OperationModesType.class, "OperationModesType", false, false, true);
        this.initEReference(this.getOperationModesType_OperationMode(), (EClassifier)this.getOperationModeT(), null, "operationMode", null, 0, -1, OperationModesType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.operationModeTEClass, OperationModeT.class, "OperationModeT", false, false, true);
        this.initEAttribute(this.getOperationModeT_Id(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "id", null, 1, 1, OperationModeT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOperationModeT_IsCTMode(), (EClassifier)theXMLTypePackage.getBoolean(), "isCTMode", null, 0, 1, OperationModeT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getOperationModeT_IsStartMode(), (EClassifier)theXMLTypePackage.getBoolean(), "isStartMode", null, 0, 1, OperationModeT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getOperationModeT_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, OperationModeT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.operationModeTypeEClass, OperationModeType.class, "OperationModeType", false, false, true);
        this.initEAttribute(this.getOperationModeType_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, OperationModeType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.optionTEClass, OptionT.class, "OptionT", false, false, true);
        this.initEAttribute(this.getOptionT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOptionT_Type(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "type", null, 0, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOptionT_Value(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "value", null, 1, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.osDescriptionTypeEClass, OsDescriptionType.class, "OsDescriptionType", false, false, true);
        this.initEReference(this.getOsDescriptionType_OperationModes(), (EClassifier)this.getOperationModesType(), null, "operationModes", null, 1, 1, OsDescriptionType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getOsDescriptionType_Tasks(), (EClassifier)this.getTasksType(), null, "tasks", null, 1, 1, OsDescriptionType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getOsDescriptionType_OsSettings(), (EClassifier)this.getOsSettingsType(), null, "osSettings", null, 1, 1, OsDescriptionType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getOsDescriptionType_CoopLevels(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "coopLevels", null, 1, 1, OsDescriptionType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOsDescriptionType_EnableMonitoring(), (EClassifier)theXMLTypePackage.getBoolean(), "enableMonitoring", null, 1, 1, OsDescriptionType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getOsDescriptionType_EnableTickDuration(), (EClassifier)theXMLTypePackage.getBoolean(), "enableTickDuration", null, 1, 1, OsDescriptionType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getOsDescriptionType_EventLevels(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "eventLevels", null, 1, 1, OsDescriptionType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOsDescriptionType_OID(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "oID", null, 0, 1, OsDescriptionType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOsDescriptionType_PreempLevels(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "preempLevels", null, 1, 1, OsDescriptionType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOsDescriptionType_TickDuration(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "tickDuration", null, 1, 1, OsDescriptionType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.osEntryTypeEClass, OsEntryType.class, "OsEntryType", false, false, true);
        this.initEReference(this.getOsEntryType_TargetKey(), (EClassifier)this.getTargetKeyType(), null, "targetKey", null, 1, 1, OsEntryType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getOsEntryType_OsDescription(), (EClassifier)this.getOsDescriptionType(), null, "osDescription", null, 1, 1, OsEntryType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.osLogicTEClass, OSLogicT.class, "OSLogicT", false, false, true);
        this.initEReference(this.getOSLogicT_OsEntry(), (EClassifier)this.getOsEntryType(), null, "osEntry", null, 0, -1, OSLogicT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.osLogicTypeEClass, OsLogicType.class, "OsLogicType", false, false, true);
        this.initEClass(this.osSettingsTypeEClass, OsSettingsType.class, "OsSettingsType", false, false, true);
        this.initEReference(this.getOsSettingsType_Group(), (EClassifier)this.getGroupType1(), null, "group", null, 0, -1, OsSettingsType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.platformTypeEClass, PlatformType.class, "PlatformType", false, false, true);
        this.initEReference(this.getPlatformType_Target(), (EClassifier)this.getTargetType1(), null, "target", null, 0, 1, PlatformType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getPlatformType_Compiler(), (EClassifier)this.getCompilerType(), null, "compiler", null, 0, 1, PlatformType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getPlatformType_CodeGenerator(), (EClassifier)this.getCodeGeneratorType(), null, "codeGenerator", null, 0, 1, PlatformType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getPlatformType_OperatingSystem(), (EClassifier)this.getOperatingSystemType(), null, "operatingSystem", null, 0, 1, PlatformType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getPlatformType_PlatformKey(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "platformKey", null, 1, 1, PlatformType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.pointTEClass, PointT.class, "PointT", false, false, true);
        this.initEAttribute(this.getPointT_X(), (EClassifier)theXMLTypePackage.getInteger(), "x", null, 1, 1, PointT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPointT_Y(), (EClassifier)theXMLTypePackage.getInteger(), "y", null, 1, 1, PointT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.processTypeEClass, ProcessType.class, "ProcessType", false, false, true);
        this.initEAttribute(this.getProcessType_Default(), (EClassifier)theXMLTypePackage.getBoolean(), "default", "false", 0, 1, ProcessType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProcessType_ElementName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "elementName", null, 1, 1, ProcessType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getProcessType_ElementOID(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "elementOID", null, 0, 1, ProcessType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getProcessType_Index(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "index", null, 1, 1, ProcessType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getProcessType_MethodName(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "methodName", null, 1, 1, ProcessType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getProcessType_MethodOID(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "methodOID", null, 0, 1, ProcessType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.projectTypeEClass, ProjectType.class, "ProjectType", false, false, true);
        this.initEReference(this.getProjectType_ImplementationConfiguration(), (EClassifier)this.getImplementationConfigurationType(), null, "implementationConfiguration", null, 1, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProjectType_DataConfiguration(), (EClassifier)this.getDataConfigurationType(), null, "dataConfiguration", null, 1, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProjectType_OsLogic(), (EClassifier)this.getOsLogicType(), null, "osLogic", null, 1, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProjectType_ModelConfiguration(), (EClassifier)this.getModelConfigurationT(), null, "modelConfiguration", null, 1, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProjectType_BuildConfiguration(), (EClassifier)this.getBuildConfigurationType(), null, "buildConfiguration", null, 1, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProjectType_SimulationConfiguration(), (EClassifier)this.getSimulationConfigurationType(), null, "simulationConfiguration", null, 0, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProjectType_HiddenMessageTypes(), (EClassifier)this.getMessageTType(), null, "hiddenMessageTypes", null, 0, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProjectType_IgnoredMessageTypes(), (EClassifier)this.getMessageTType(), null, "ignoredMessageTypes", null, 0, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProjectType_PromotedToErrorMessageTypes(), (EClassifier)this.getMessageTType(), null, "promotedToErrorMessageTypes", null, 0, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProjectType_PromotedToWarningMessageTypes(), (EClassifier)this.getMessageTType(), null, "promotedToWarningMessageTypes", null, 0, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProjectType_TransferOptions(), (EClassifier)this.getTransferOptionsType(), null, "transferOptions", null, 0, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProjectType_Files(), (EClassifier)this.getFilesType(), null, "files", null, 0, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProjectType_Signature(), (EClassifier)theXmldsigPackage.getSignatureType(), null, "signature", null, 0, 1, ProjectType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getProjectType_BuildConfigKey(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "buildConfigKey", null, 0, 1, ProjectType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getProjectType_SchemaVersion(), (EClassifier)theXMLTypePackage.getString(), "schemaVersion", null, 0, 1, ProjectType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getProjectType_ToolVersion(), (EClassifier)theXMLTypePackage.getString(), "toolVersion", null, 0, 1, ProjectType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.simulationConfigurationTypeEClass, SimulationConfigurationType.class, "SimulationConfigurationType", false, false, true);
        this.initEAttribute(this.getSimulationConfigurationType_ExperimentTarget(), (EClassifier)this.getExperimentTargetType(), "experimentTarget", "ExperimentOfflinePC", 0, 1, SimulationConfigurationType.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.sizeTEClass, SizeT.class, "SizeT", false, false, true);
        this.initEAttribute(this.getSizeT_X(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "x", null, 1, 1, SizeT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getSizeT_Y(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "y", null, 1, 1, SizeT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.softwareTypeEClass, SoftwareType.class, "SoftwareType", false, false, true);
        this.initEAttribute(this.getSoftwareType_Autostart(), (EClassifier)theXMLTypePackage.getBoolean(), "autostart", null, 1, 1, SoftwareType.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.targetKeyTypeEClass, TargetKeyType.class, "TargetKeyType", false, false, true);
        this.initEAttribute(this.getTargetKeyType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, TargetKeyType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.targetTypeEClass, TargetType.class, "TargetType", false, false, true);
        this.initEReference(this.getTargetType_File(), (EClassifier)this.getFileType(), null, "file", null, 1, -1, TargetType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getTargetType_Key(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "key", null, 1, 1, TargetType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.targetType1EClass, TargetType1.class, "TargetType1", false, false, true);
        this.initEAttribute(this.getTargetType1_Key(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "key", null, 1, 1, TargetType1.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTargetType1_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, TargetType1.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.taskBaseTEClass, TaskBaseT.class, "TaskBaseT", false, false, true);
        this.initEAttribute(this.getTaskBaseT_PrePostHooks(), (EClassifier)this.getPrePostHooksType(), "prePostHooks", null, 1, 1, TaskBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTaskBaseT_Priority(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "priority", null, 1, 1, TaskBaseT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.tasksTypeEClass, TasksType.class, "TasksType", false, false, true);
        this.initEReference(this.getTasksType_Task(), (EClassifier)this.getTaskType(), null, "task", null, 0, -1, TasksType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.taskSwBaseTEClass, TaskSwBaseT.class, "TaskSwBaseT", false, false, true);
        this.initEAttribute(this.getTaskSwBaseT_Deadline(), (EClassifier)theXMLTypePackage.getBoolean(), "deadline", null, 1, 1, TaskSwBaseT.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTaskSwBaseT_DeadlineValue(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "deadlineValue", null, 1, 1, TaskSwBaseT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTaskSwBaseT_MaxNoActivations(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "maxNoActivations", null, 1, 1, TaskSwBaseT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTaskSwBaseT_Scheduling(), (EClassifier)this.getSchedulingType(), "scheduling", null, 1, 1, TaskSwBaseT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.taskTypeEClass, TaskType.class, "TaskType", false, false, true);
        this.initEReference(this.getTaskType_Process(), (EClassifier)this.getProcessType(), null, "process", null, 0, -1, TaskType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTaskType_AssignedOperationModes(), (EClassifier)this.getAssignedOperationModesType(), null, "assignedOperationModes", null, 1, 1, TaskType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTaskType_TaskType(), (EClassifier)this.getTaskTypeType(), null, "taskType", null, 1, 1, TaskType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getTaskType_Id(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "id", null, 1, 1, TaskType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTaskType_IsContinuousTime(), (EClassifier)theXMLTypePackage.getBoolean(), "isContinuousTime", "false", 0, 1, TaskType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTaskType_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, TaskType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.taskTypeTypeEClass, TaskTypeType.class, "TaskTypeType", false, false, true);
        this.initEReference(this.getTaskTypeType_Interrupt(), (EClassifier)this.getInterruptType(), null, "interrupt", null, 0, 1, TaskTypeType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTaskTypeType_Alarm(), (EClassifier)this.getAlarmType(), null, "alarm", null, 0, 1, TaskTypeType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTaskTypeType_Timetable(), (EClassifier)this.getTimetableType(), null, "timetable", null, 0, 1, TaskTypeType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTaskTypeType_Software(), (EClassifier)this.getSoftwareType(), null, "software", null, 0, 1, TaskTypeType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getTaskTypeType_Init(), (EClassifier)this.getInitType(), null, "init", null, 0, 1, TaskTypeType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.timeStampTEClass, TimeStampT.class, "TimeStampT", false, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampCounter(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "timeStampCounter", null, 0, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampKey(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "timeStampKey", null, 1, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampValue(), (EClassifier)theXMLTypePackage.getDateTime(), "timeStampValue", null, 1, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.timetableTypeEClass, TimetableType.class, "TimetableType", false, false, true);
        this.initEAttribute(this.getTimetableType_Delay(), (EClassifier)theXMLTypePackage.getFloat(), "delay", null, 1, 1, TimetableType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTimetableType_Period(), (EClassifier)theXMLTypePackage.getDouble(), "period", null, 1, 1, TimetableType.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.transferOptionsTypeEClass, TransferOptionsType.class, "TransferOptionsType", false, false, true);
        this.initEReference(this.getTransferOptionsType_Option(), (EClassifier)this.getOptionT(), null, "option", null, 0, -1, TransferOptionsType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.viewTypeEClass, ViewType.class, "ViewType", false, false, true);
        this.initEAttribute(this.getViewType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, ViewType.class, false, false, true, false, false, true, false, true);
        this.initEEnum(this.codeGeneratorTEEnum, CodeGeneratorT.class, "CodeGeneratorT");
        this.addEEnumLiteral(this.codeGeneratorTEEnum, CodeGeneratorT.PHYSICALEXPERIMENT);
        this.addEEnumLiteral(this.codeGeneratorTEEnum, CodeGeneratorT.QUANTIZEDEXPERIMENT);
        this.addEEnumLiteral(this.codeGeneratorTEEnum, CodeGeneratorT.IMPLEMENTATIONEXPERIMENT);
        this.addEEnumLiteral(this.codeGeneratorTEEnum, CodeGeneratorT.IMPLEMENTATIONCONTROLLER);
        this.initEEnum(this.experimentTargetTypeEEnum, ExperimentTargetType.class, "ExperimentTargetType");
        this.addEEnumLiteral(this.experimentTargetTypeEEnum, ExperimentTargetType.EXPERIMENT_OFFLINE_PC);
        this.addEEnumLiteral(this.experimentTargetTypeEEnum, ExperimentTargetType.EXPERIMENT_ONLINE_PC);
        this.addEEnumLiteral(this.experimentTargetTypeEEnum, ExperimentTargetType.EXPERIMENT_OFFLINE_RP);
        this.addEEnumLiteral(this.experimentTargetTypeEEnum, ExperimentTargetType.EXPERIMENT_ONLINE_RP);
        this.addEEnumLiteral(this.experimentTargetTypeEEnum, ExperimentTargetType.EXPERIMENT_ONLINE_ETAS_EE);
        this.addEEnumLiteral(this.experimentTargetTypeEEnum, ExperimentTargetType.EXPERIMENT_ONLINE_INCA);
        this.addEEnumLiteral(this.experimentTargetTypeEEnum, ExperimentTargetType.EXPERIMENT_ONLINE_INTECRIO);
        this.initEEnum(this.prePostHooksTypeEEnum, PrePostHooksType.class, "PrePostHooksType");
        this.addEEnumLiteral(this.prePostHooksTypeEEnum, PrePostHooksType.NONE);
        this.addEEnumLiteral(this.prePostHooksTypeEEnum, PrePostHooksType.DTONLY);
        this.addEEnumLiteral(this.prePostHooksTypeEEnum, PrePostHooksType.MONITORING);
        this.initEEnum(this.schedulingTypeEEnum, SchedulingType.class, "SchedulingType");
        this.addEEnumLiteral(this.schedulingTypeEEnum, SchedulingType.COOPERATIVE);
        this.addEEnumLiteral(this.schedulingTypeEEnum, SchedulingType.PREEMPTIVE);
        this.addEEnumLiteral(this.schedulingTypeEEnum, SchedulingType.NONPREEMPTIVE);
        this.addEEnumLiteral(this.schedulingTypeEEnum, SchedulingType.COOPERATIVE1);
        this.addEEnumLiteral(this.schedulingTypeEEnum, SchedulingType.FULL);
        this.addEEnumLiteral(this.schedulingTypeEEnum, SchedulingType.NON);
        this.addEEnumLiteral(this.schedulingTypeEEnum, SchedulingType.UNDEF);
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
        this.initEDataType(this.codeGeneratorTObjectEDataType, CodeGeneratorT.class, "CodeGeneratorTObject", true, true);
        this.initEDataType(this.experimentTargetTypeObjectEDataType, ExperimentTargetType.class, "ExperimentTargetTypeObject", true, true);
        this.initEDataType(this.numberOrFractionEDataType, Object.class, "NumberOrFraction", true, false);
        this.initEDataType(this.numberOrFractionMember1EDataType, String.class, "NumberOrFractionMember1", true, false);
        this.initEDataType(this.nzqrEDataType, Object.class, "Nzqr", true, false);
        this.initEDataType(this.nzqrMember2EDataType, String.class, "NzqrMember2", true, false);
        this.initEDataType(this.oidEDataType, String.class, "OID", true, false);
        this.initEDataType(this.prePostHooksTypeObjectEDataType, PrePostHooksType.class, "PrePostHooksTypeObject", true, true);
        this.initEDataType(this.schedulingTypeObjectEDataType, SchedulingType.class, "SchedulingTypeObject", true, true);
        this.initEDataType(this.typeTypeObjectEDataType, TypeType.class, "TypeTypeObject", true, true);
        this.createResource("http://www.etas.com/ascet/amd/620/component_project");
        this.createExtendedMetaDataAnnotations();
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.alarmTypeEClass, source, new String[]{"name", "Alarm_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getAlarmType_Delay(), source, new String[]{"kind", "attribute", "name", "delay", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAlarmType_Period(), source, new String[]{"kind", "attribute", "name", "period", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getAlarmType_StartAlarm(), source, new String[]{"kind", "attribute", "name", "startAlarm", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.assignedOperationModesTypeEClass, source, new String[]{"name", "AssignedOperationModes_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getAssignedOperationModesType_OperationMode(), source, new String[]{"kind", "element", "name", "OperationMode", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.buildConfigurationTypeEClass, source, new String[]{"name", "BuildConfiguration_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getBuildConfigurationType_Platform(), source, new String[]{"kind", "element", "name", "Platform", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getBuildConfigurationType_BuildSettings(), source, new String[]{"kind", "element", "name", "BuildSettings", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getBuildConfigurationType_BuildConfigKey(), source, new String[]{"kind", "attribute", "name", "buildConfigKey", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getBuildConfigurationType_Checksum(), source, new String[]{"kind", "attribute", "name", "checksum", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getBuildConfigurationType_ChecksumCodeRelevant(), source, new String[]{"kind", "attribute", "name", "checksumCodeRelevant", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getBuildConfigurationType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.buildSettingsTypeEClass, source, new String[]{"name", "BuildSettings_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getBuildSettingsType_Group(), source, new String[]{"kind", "element", "name", "Group", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.codeGeneratorTEEnum, source, new String[]{"name", "CodeGeneratorT"});
        this.addAnnotation((ENamedElement)this.codeGeneratorTObjectEDataType, source, new String[]{"name", "CodeGeneratorT:Object", "baseType", "CodeGeneratorT"});
        this.addAnnotation((ENamedElement)this.codeGeneratorTypeEClass, source, new String[]{"name", "CodeGenerator_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getCodeGeneratorType_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.codeVariantTEClass, source, new String[]{"name", "CodeVariantT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.colorTEClass, source, new String[]{"name", "ColorT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getColorT_Blue(), source, new String[]{"kind", "attribute", "name", "blue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getColorT_Green(), source, new String[]{"kind", "attribute", "name", "green", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getColorT_Red(), source, new String[]{"kind", "attribute", "name", "red", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.compilerTypeEClass, source, new String[]{"name", "Compiler_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getCompilerType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getCompilerType_Path(), source, new String[]{"kind", "attribute", "name", "path", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.dataConfigurationTypeEClass, source, new String[]{"name", "DataConfiguration_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getDataConfigurationType_DataSetName(), source, new String[]{"kind", "attribute", "name", "dataSetName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDataConfigurationType_DataSetOID(), source, new String[]{"kind", "attribute", "name", "dataSetOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.documentRootEClass, source, new String[]{"name", "", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_XMLNSPrefixMap(), source, new String[]{"kind", "attribute", "name", "xmlns:prefix"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_XSISchemaLocation(), source, new String[]{"kind", "attribute", "name", "xsi:schemaLocation"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Project(), source, new String[]{"kind", "element", "name", "Project", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.elementInfoTEClass, source, new String[]{"name", "ElementInfoT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getElementInfoT_ElementId(), source, new String[]{"kind", "attribute", "name", "elementId", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getElementInfoT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.ercosektEClass, source, new String[]{"name", "ERCOSEKT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.experimentTargetTypeEEnum, source, new String[]{"name", "experimentTarget_._type"});
        this.addAnnotation((ENamedElement)this.experimentTargetTypeObjectEDataType, source, new String[]{"name", "experimentTarget_._type:Object", "baseType", "experimentTarget_._type"});
        this.addAnnotation((ENamedElement)this.fileReferenceTEClass, source, new String[]{"name", "FileReferenceT", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getFileReferenceT_Value(), source, new String[]{"name", ":0", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getFileReferenceT_Checksum(), source, new String[]{"kind", "attribute", "name", "checksum", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFileReferenceT_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.filesTypeEClass, source, new String[]{"name", "Files_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getFilesType_Target(), source, new String[]{"kind", "element", "name", "Target", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.fileTypeEClass, source, new String[]{"name", "File_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getFileType_Name(), source, new String[]{"kind", "element", "name", "Name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFileType_Location(), source, new String[]{"kind", "element", "name", "Location", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFileType_AbstractLocation(), source, new String[]{"kind", "element", "name", "AbstractLocation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFileType_OriginalLocation(), source, new String[]{"kind", "element", "name", "OriginalLocation", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFileType_TimeStamp(), source, new String[]{"kind", "attribute", "name", "timeStamp", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.formattedTextTEClass, source, new String[]{"name", "FormattedTextT", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getFormattedTextT_Value(), source, new String[]{"name", ":0", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.genericDataTEClass, source, new String[]{"name", "GenericDataT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getGenericDataT_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##any", "name", ":0", "processing", "skip"});
        this.addAnnotation((ENamedElement)this.getGenericDataT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.groupTypeEClass, source, new String[]{"name", "Group_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getGroupType_Option(), source, new String[]{"kind", "element", "name", "Option", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getGroupType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.groupType1EClass, source, new String[]{"name", "Group_._1_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getGroupType1_Option(), source, new String[]{"kind", "element", "name", "Option", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getGroupType1_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.iconTEClass, source, new String[]{"name", "IconT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getIconT_IconFile(), source, new String[]{"kind", "element", "name", "IconFile", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIconT_Size(), source, new String[]{"kind", "element", "name", "Size", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIconT_IconName(), source, new String[]{"kind", "attribute", "name", "iconName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIconT_IconOID(), source, new String[]{"kind", "attribute", "name", "iconOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.implementationConfigurationTypeEClass, source, new String[]{"name", "ImplementationConfiguration_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getImplementationConfigurationType_ImplementationSetName(), source, new String[]{"kind", "attribute", "name", "implementationSetName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getImplementationConfigurationType_ImplementationSetOID(), source, new String[]{"kind", "attribute", "name", "implementationSetOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.initTypeEClass, source, new String[]{"name", "Init_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.interruptTypeEClass, source, new String[]{"name", "Interrupt_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getInterruptType_EventId(), source, new String[]{"kind", "attribute", "name", "eventId", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getInterruptType_IsrSource(), source, new String[]{"kind", "attribute", "name", "isrSource", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getInterruptType_MaxPrio(), source, new String[]{"kind", "attribute", "name", "maxPrio", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getInterruptType_MinimumPeriod(), source, new String[]{"kind", "attribute", "name", "minimumPeriod", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getInterruptType_MinimumPeriodValue(), source, new String[]{"kind", "attribute", "name", "minimumPeriodValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getInterruptType_MinPrio(), source, new String[]{"kind", "attribute", "name", "minPrio", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.intervalTEClass, source, new String[]{"name", "IntervalT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getIntervalT_Max(), source, new String[]{"kind", "attribute", "name", "max", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIntervalT_Min(), source, new String[]{"kind", "attribute", "name", "min", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.itemRefTEClass, source, new String[]{"name", "ItemRefT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getItemRefT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemRefT_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.messageTTypeEClass, source, new String[]{"name", "MessageTType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getMessageTType_MessageType(), source, new String[]{"kind", "element", "name", "MessageType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.messageTypeTypeEClass, source, new String[]{"name", "MessageType_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getMessageTypeType_Label(), source, new String[]{"kind", "attribute", "name", "label", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.modelConfigurationTEClass, source, new String[]{"name", "ModelConfigurationT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getModelConfigurationT_FormulasFile(), source, new String[]{"kind", "element", "name", "FormulasFile", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getModelConfigurationT_ImplementationTypesFile(), source, new String[]{"kind", "element", "name", "ImplementationTypesFile", "namespace", "##targetNamespace"});
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
        this.addAnnotation((ENamedElement)this.operatingSystemTypeEClass, source, new String[]{"name", "OperatingSystem_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getOperatingSystemType_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.operationModesTypeEClass, source, new String[]{"name", "OperationModes_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getOperationModesType_OperationMode(), source, new String[]{"kind", "element", "name", "OperationMode", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.operationModeTEClass, source, new String[]{"name", "OperationModeT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getOperationModeT_Id(), source, new String[]{"kind", "attribute", "name", "id", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOperationModeT_IsCTMode(), source, new String[]{"kind", "attribute", "name", "isCTMode", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOperationModeT_IsStartMode(), source, new String[]{"kind", "attribute", "name", "isStartMode", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOperationModeT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.operationModeTypeEClass, source, new String[]{"name", "OperationMode_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getOperationModeType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.optionTEClass, source, new String[]{"name", "OptionT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getOptionT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOptionT_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOptionT_Value(), source, new String[]{"kind", "attribute", "name", "value", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.osDescriptionTypeEClass, source, new String[]{"name", "OsDescription_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getOsDescriptionType_OperationModes(), source, new String[]{"kind", "element", "name", "OperationModes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOsDescriptionType_Tasks(), source, new String[]{"kind", "element", "name", "Tasks", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOsDescriptionType_OsSettings(), source, new String[]{"kind", "element", "name", "OsSettings", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOsDescriptionType_CoopLevels(), source, new String[]{"kind", "attribute", "name", "coopLevels", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOsDescriptionType_EnableMonitoring(), source, new String[]{"kind", "attribute", "name", "enableMonitoring", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOsDescriptionType_EnableTickDuration(), source, new String[]{"kind", "attribute", "name", "enableTickDuration", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOsDescriptionType_EventLevels(), source, new String[]{"kind", "attribute", "name", "eventLevels", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOsDescriptionType_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOsDescriptionType_PreempLevels(), source, new String[]{"kind", "attribute", "name", "preempLevels", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOsDescriptionType_TickDuration(), source, new String[]{"kind", "attribute", "name", "tickDuration", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.osEntryTypeEClass, source, new String[]{"name", "OsEntry_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getOsEntryType_TargetKey(), source, new String[]{"kind", "element", "name", "TargetKey", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOsEntryType_OsDescription(), source, new String[]{"kind", "element", "name", "OsDescription", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.osLogicTEClass, source, new String[]{"name", "OSLogicT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getOSLogicT_OsEntry(), source, new String[]{"kind", "element", "name", "OsEntry", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.osLogicTypeEClass, source, new String[]{"name", "OsLogic_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.osSettingsTypeEClass, source, new String[]{"name", "OsSettings_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getOsSettingsType_Group(), source, new String[]{"kind", "element", "name", "Group", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.platformTypeEClass, source, new String[]{"name", "Platform_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getPlatformType_Target(), source, new String[]{"kind", "element", "name", "Target", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPlatformType_Compiler(), source, new String[]{"kind", "element", "name", "Compiler", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPlatformType_CodeGenerator(), source, new String[]{"kind", "element", "name", "CodeGenerator", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPlatformType_OperatingSystem(), source, new String[]{"kind", "element", "name", "OperatingSystem", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPlatformType_PlatformKey(), source, new String[]{"kind", "attribute", "name", "platformKey", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.pointTEClass, source, new String[]{"name", "PointT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getPointT_X(), source, new String[]{"kind", "attribute", "name", "x", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPointT_Y(), source, new String[]{"kind", "attribute", "name", "y", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.prePostHooksTypeEEnum, source, new String[]{"name", "prePostHooks_._type"});
        this.addAnnotation((ENamedElement)this.prePostHooksTypeObjectEDataType, source, new String[]{"name", "prePostHooks_._type:Object", "baseType", "prePostHooks_._type"});
        this.addAnnotation((ENamedElement)this.processTypeEClass, source, new String[]{"name", "Process_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getProcessType_Default(), source, new String[]{"kind", "attribute", "name", "default", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProcessType_ElementName(), source, new String[]{"kind", "attribute", "name", "elementName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProcessType_ElementOID(), source, new String[]{"kind", "attribute", "name", "elementOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProcessType_Index(), source, new String[]{"kind", "attribute", "name", "index", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProcessType_MethodName(), source, new String[]{"kind", "attribute", "name", "methodName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProcessType_MethodOID(), source, new String[]{"kind", "attribute", "name", "methodOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.projectTypeEClass, source, new String[]{"name", "Project_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getProjectType_ImplementationConfiguration(), source, new String[]{"kind", "element", "name", "ImplementationConfiguration", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_DataConfiguration(), source, new String[]{"kind", "element", "name", "DataConfiguration", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_OsLogic(), source, new String[]{"kind", "element", "name", "OsLogic", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_ModelConfiguration(), source, new String[]{"kind", "element", "name", "ModelConfiguration", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_BuildConfiguration(), source, new String[]{"kind", "element", "name", "BuildConfiguration", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_SimulationConfiguration(), source, new String[]{"kind", "element", "name", "SimulationConfiguration", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_HiddenMessageTypes(), source, new String[]{"kind", "element", "name", "HiddenMessageTypes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_IgnoredMessageTypes(), source, new String[]{"kind", "element", "name", "IgnoredMessageTypes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_PromotedToErrorMessageTypes(), source, new String[]{"kind", "element", "name", "PromotedToErrorMessageTypes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_PromotedToWarningMessageTypes(), source, new String[]{"kind", "element", "name", "PromotedToWarningMessageTypes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_TransferOptions(), source, new String[]{"kind", "element", "name", "TransferOptions", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_Files(), source, new String[]{"kind", "element", "name", "Files", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_Signature(), source, new String[]{"kind", "element", "name", "Signature", "namespace", "http://www.w3.org/2000/09/xmldsig#"});
        this.addAnnotation((ENamedElement)this.getProjectType_BuildConfigKey(), source, new String[]{"kind", "attribute", "name", "buildConfigKey", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_SchemaVersion(), source, new String[]{"kind", "attribute", "name", "schemaVersion", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getProjectType_ToolVersion(), source, new String[]{"kind", "attribute", "name", "toolVersion", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.schedulingTypeEEnum, source, new String[]{"name", "scheduling_._type"});
        this.addAnnotation((ENamedElement)this.schedulingTypeObjectEDataType, source, new String[]{"name", "scheduling_._type:Object", "baseType", "scheduling_._type"});
        this.addAnnotation((ENamedElement)this.simulationConfigurationTypeEClass, source, new String[]{"name", "SimulationConfiguration_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getSimulationConfigurationType_ExperimentTarget(), source, new String[]{"kind", "attribute", "name", "experimentTarget", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.sizeTEClass, source, new String[]{"name", "SizeT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getSizeT_X(), source, new String[]{"kind", "attribute", "name", "x", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSizeT_Y(), source, new String[]{"kind", "attribute", "name", "y", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.softwareTypeEClass, source, new String[]{"name", "Software_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getSoftwareType_Autostart(), source, new String[]{"kind", "attribute", "name", "autostart", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.targetKeyTypeEClass, source, new String[]{"name", "TargetKey_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getTargetKeyType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.targetTypeEClass, source, new String[]{"name", "Target_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getTargetType_File(), source, new String[]{"kind", "element", "name", "File", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTargetType_Key(), source, new String[]{"kind", "attribute", "name", "key", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.targetType1EClass, source, new String[]{"name", "Target_._1_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getTargetType1_Key(), source, new String[]{"kind", "attribute", "name", "key", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTargetType1_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.taskBaseTEClass, source, new String[]{"name", "TaskBaseT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getTaskBaseT_PrePostHooks(), source, new String[]{"kind", "attribute", "name", "prePostHooks", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskBaseT_Priority(), source, new String[]{"kind", "attribute", "name", "priority", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.tasksTypeEClass, source, new String[]{"name", "Tasks_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getTasksType_Task(), source, new String[]{"kind", "element", "name", "Task", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.taskSwBaseTEClass, source, new String[]{"name", "TaskSwBaseT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getTaskSwBaseT_Deadline(), source, new String[]{"kind", "attribute", "name", "deadline", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskSwBaseT_DeadlineValue(), source, new String[]{"kind", "attribute", "name", "deadlineValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskSwBaseT_MaxNoActivations(), source, new String[]{"kind", "attribute", "name", "maxNoActivations", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskSwBaseT_Scheduling(), source, new String[]{"kind", "attribute", "name", "scheduling", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.taskTypeEClass, source, new String[]{"name", "Task_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getTaskType_Process(), source, new String[]{"kind", "element", "name", "Process", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskType_AssignedOperationModes(), source, new String[]{"kind", "element", "name", "AssignedOperationModes", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskType_TaskType(), source, new String[]{"kind", "element", "name", "TaskType", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskType_Id(), source, new String[]{"kind", "attribute", "name", "id", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskType_IsContinuousTime(), source, new String[]{"kind", "attribute", "name", "isContinuousTime", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.taskTypeTypeEClass, source, new String[]{"name", "TaskType_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getTaskTypeType_Interrupt(), source, new String[]{"kind", "element", "name", "Interrupt", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskTypeType_Alarm(), source, new String[]{"kind", "element", "name", "Alarm", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskTypeType_Timetable(), source, new String[]{"kind", "element", "name", "Timetable", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskTypeType_Software(), source, new String[]{"kind", "element", "name", "Software", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTaskTypeType_Init(), source, new String[]{"kind", "element", "name", "Init", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.timeStampTEClass, source, new String[]{"name", "TimeStampT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampCounter(), source, new String[]{"kind", "attribute", "name", "timeStampCounter", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampKey(), source, new String[]{"kind", "attribute", "name", "timeStampKey", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampValue(), source, new String[]{"kind", "attribute", "name", "timeStampValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.timetableTypeEClass, source, new String[]{"name", "Timetable_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getTimetableType_Delay(), source, new String[]{"kind", "attribute", "name", "delay", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTimetableType_Period(), source, new String[]{"kind", "attribute", "name", "period", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.transferOptionsTypeEClass, source, new String[]{"name", "TransferOptions_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getTransferOptionsType_Option(), source, new String[]{"kind", "element", "name", "Option", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.typeTypeEEnum, source, new String[]{"name", "type_._type"});
        this.addAnnotation((ENamedElement)this.typeTypeObjectEDataType, source, new String[]{"name", "type_._type:Object", "baseType", "type_._type"});
        this.addAnnotation((ENamedElement)this.viewTypeEClass, source, new String[]{"name", "View_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getViewType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
    }
}

