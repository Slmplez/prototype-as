/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.common.util.WrappedException
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EValidator
 *  org.eclipse.emf.ecore.EValidator$Descriptor
 *  org.eclipse.emf.ecore.EValidator$Registry
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.xmi.impl.EcoreResourceFactoryImpl
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.impl.ComponentDataPackageImpl;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.impl.ComponentImplementationPackageImpl;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.impl.ComponentMainPackageImpl;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.impl.ComponentProjectPackageImpl;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationFactory;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.util.ComponentSpecificationValidator;
import com.etas.amd620.core.Formulas.FormulasPackage;
import com.etas.amd620.core.Formulas.impl.FormulasPackageImpl;
import com.etas.amd620.core.Implementationtypes.ImplementationtypesPackage;
import com.etas.amd620.core.Implementationtypes.impl.ImplementationtypesPackageImpl;
import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.impl.Amd620PackageImpl;
import java.io.IOException;
import java.net.URL;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.impl.EcoreResourceFactoryImpl;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.w3._2000._09.xmldsig.XmldsigPackage;
import org.w3._2000._09.xmldsig.impl.XmldsigPackageImpl;

public class ComponentSpecificationPackageImpl
extends EPackageImpl
implements ComponentSpecificationPackage {
    protected String packageFilename = "ComponentSpecification.ecore";
    private EClass actionsTypeEClass = null;
    private EClass actionsType1EClass = null;
    private EClass actionTEClass = null;
    private EClass actionTypeEClass = null;
    private EClass blockConnectorTEClass = null;
    private EClass blockDiagramSpecificationTEClass = null;
    private EClass blockInterfaceTEClass = null;
    private EClass booleanTableTypeEClass = null;
    private EClass cCodeSpecificationTEClass = null;
    private EClass cCodeTypeEClass = null;
    private EClass codeVariantTypeEClass = null;
    private EClass colorTEClass = null;
    private EClass columnHeadingTypeEClass = null;
    private EClass complexElementTEClass = null;
    private EClass conditionalTableTypeEClass = null;
    private EClass conditionColumnsTypeEClass = null;
    private EClass conditionTypeEClass = null;
    private EClass connectionLineTEClass = null;
    private EClass connectionPointTEClass = null;
    private EClass connectionTEClass = null;
    private EClass connectorInterfaceTypeEClass = null;
    private EClass contentsComplexTypeEClass = null;
    private EClass controlRteAccessTEClass = null;
    private EClass controlRteInvokeTEClass = null;
    private EClass controlTEClass = null;
    private EClass diagramElementsComplexTypeEClass = null;
    private EClass diagramElementTEClass = null;
    private EClass disablingModesTypeEClass = null;
    private EClass documentRootEClass = null;
    private EClass entryActionTypeEClass = null;
    private EClass esdlActionTypeEClass = null;
    private EClass esdlCodeTEClass = null;
    private EClass esdlSpecificationTEClass = null;
    private EClass eventSpecificationTEClass = null;
    private EClass eventsTypeEClass = null;
    private EClass eventTEClass = null;
    private EClass eventTypeTypeEClass = null;
    private EClass exitActionTypeEClass = null;
    private EClass fileListSpecificationTEClass = null;
    private EClass fileReferenceTEClass = null;
    private EClass fileTypeEClass = null;
    private EClass formattedTextTEClass = null;
    private EClass genericDataTEClass = null;
    private EClass getSetPortBaseTEClass = null;
    private EClass graphicObjectTEClass = null;
    private EClass graphicSpecificationTEClass = null;
    private EClass headerFileTypeEClass = null;
    private EClass hierarchyConnectorTypeEClass = null;
    private EClass hierarchyStateTEClass = null;
    private EClass hierarchyTEClass = null;
    private EClass iconTEClass = null;
    private EClass implementationCastTEClass = null;
    private EClass inOutPortTEClass = null;
    private EClass inputColumnsTypeEClass = null;
    private EClass inputPortTypeEClass = null;
    private EClass instructionColumnsTypeEClass = null;
    private EClass interfaceElementTypeEClass = null;
    private EClass interfacesTypeEClass = null;
    private EClass interfacesType1EClass = null;
    private EClass interfacesType2EClass = null;
    private EClass interfacesType3EClass = null;
    private EClass interfacesType4EClass = null;
    private EClass interfacesType5EClass = null;
    private EClass interfacesType6EClass = null;
    private EClass interfacesType7EClass = null;
    private EClass intervalTEClass = null;
    private EClass itemRefTEClass = null;
    private EClass junctionTEClass = null;
    private EClass layoutTEClass = null;
    private EClass lineStyleTEClass = null;
    private EClass lineTEClass = null;
    private EClass literalTEClass = null;
    private EClass memberGetPortTEClass = null;
    private EClass memberSetPortTEClass = null;
    private EClass methodActionTypeEClass = null;
    private EClass methodBodiesComplexTypeEClass = null;
    private EClass methodBodyTEClass = null;
    private EClass methodPortTEClass = null;
    private EClass modeElementTypeEClass = null;
    private EClass modeSwitchEventTypeEClass = null;
    private EClass modeTEClass = null;
    private EClass notesTEClass = null;
    private EClass noteTypeEClass = null;
    private EClass operationInvokedEventTypeEClass = null;
    private EClass operatorTEClass = null;
    private EClass operatorTypeEClass = null;
    private EClass optionTEClass = null;
    private EClass outputColumnsTypeEClass = null;
    private EClass pinTEClass = null;
    private EClass pointTEClass = null;
    private EClass portsTypeEClass = null;
    private EClass portTEClass = null;
    private EClass projectSpecificationTEClass = null;
    private EClass resourceInterfaceTypeEClass = null;
    private EClass resourceTEClass = null;
    private EClass returnPortTEClass = null;
    private EClass returnPortTypeEClass = null;
    private EClass returnPortType1EClass = null;
    private EClass returnPortType2EClass = null;
    private EClass runnablesTypeEClass = null;
    private EClass runnableTypeEClass = null;
    private EClass selectorPortTEClass = null;
    private EClass selectorPortTypeEClass = null;
    private EClass selectorPortType1EClass = null;
    private EClass selectorPortType2EClass = null;
    private EClass sequenceCallTEClass = null;
    private EClass sequencedPortTEClass = null;
    private EClass simpleElementBaseTEClass = null;
    private EClass simpleElementTEClass = null;
    private EClass sizeTEClass = null;
    private EClass specificationsTypeEClass = null;
    private EClass specificationTEClass = null;
    private EClass specificationTypeEClass = null;
    private EClass stateMachineSpecificationTEClass = null;
    private EClass stateTEClass = null;
    private EClass staticActionTypeEClass = null;
    private EClass symbolTEClass = null;
    private EClass tableCellTypeEClass = null;
    private EClass tableColumnTEClass = null;
    private EClass tableSpecificationTEClass = null;
    private EClass textTEClass = null;
    private EClass timeStampTEClass = null;
    private EClass timingEventTypeEClass = null;
    private EClass transitionTEClass = null;
    private EClass transitionTypeEClass = null;
    private EClass triggerPortTypeEClass = null;
    private EClass viewInfoTEClass = null;
    private EClass viewTypeEClass = null;
    private EClass viewType1EClass = null;
    private EEnum accessTypeEEnum = null;
    private EEnum accessType1EEnum = null;
    private EEnum ctOutputsTypeEEnum = null;
    private EEnum directionTypeEEnum = null;
    private EEnum directionType1EEnum = null;
    private EEnum flowTypeEEnum = null;
    private EEnum modeSwitchTypeTypeEEnum = null;
    private EEnum operatorTTypeEEnum = null;
    private EEnum publicTypeEEnum = null;
    private EEnum typeTypeEEnum = null;
    private EEnum typeType1EEnum = null;
    private EEnum typeType2EEnum = null;
    private EEnum typeType3EEnum = null;
    private EEnum typeType4EEnum = null;
    private EEnum typeType5EEnum = null;
    private EEnum visibilityTypeEEnum = null;
    private EDataType accessTypeObjectEDataType = null;
    private EDataType accessTypeObject1EDataType = null;
    private EDataType ctOutputsTypeObjectEDataType = null;
    private EDataType directionTypeObjectEDataType = null;
    private EDataType directionTypeObject1EDataType = null;
    private EDataType flowTypeObjectEDataType = null;
    private EDataType graphicOIDTEDataType = null;
    private EDataType modeSwitchTypeTypeObjectEDataType = null;
    private EDataType numberOrFractionEDataType = null;
    private EDataType numberOrFractionMember1EDataType = null;
    private EDataType nzqrEDataType = null;
    private EDataType nzqrMember2EDataType = null;
    private EDataType oidEDataType = null;
    private EDataType operatorTTypeObjectEDataType = null;
    private EDataType publicTypeObjectEDataType = null;
    private EDataType typeTypeObjectEDataType = null;
    private EDataType typeTypeObject1EDataType = null;
    private EDataType typeTypeObject2EDataType = null;
    private EDataType typeTypeObject3EDataType = null;
    private EDataType typeTypeObject4EDataType = null;
    private EDataType typeTypeObject5EDataType = null;
    private EDataType visibilityTypeObjectEDataType = null;
    private static boolean isInited = false;
    private boolean isLoaded = false;
    private boolean isFixed = false;

    private ComponentSpecificationPackageImpl() {
        super("http://www.etas.com/ascet/amd/620/component_specification", (EFactory)ComponentSpecificationFactory.eINSTANCE);
    }

    public static ComponentSpecificationPackage init() {
        if (isInited) {
            return (ComponentSpecificationPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification");
        }
        ComponentSpecificationPackageImpl theComponentSpecificationPackage = (ComponentSpecificationPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/component_specification") instanceof ComponentSpecificationPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/component_specification") : new ComponentSpecificationPackageImpl());
        isInited = true;
        XMLTypePackage.eINSTANCE.eClass();
        Amd620PackageImpl theAmd620Package = (Amd620PackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") instanceof Amd620PackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") : Amd620Package.eINSTANCE);
        ComponentMainPackageImpl theComponentMainPackage = (ComponentMainPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") instanceof ComponentMainPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") : ComponentMainPackage.eINSTANCE);
        ComponentDataPackageImpl theComponentDataPackage = (ComponentDataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") instanceof ComponentDataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") : ComponentDataPackage.eINSTANCE);
        ComponentImplementationPackageImpl theComponentImplementationPackage = (ComponentImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") instanceof ComponentImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") : ComponentImplementationPackage.eINSTANCE);
        ComponentProjectPackageImpl theComponentProjectPackage = (ComponentProjectPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project") instanceof ComponentProjectPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project") : ComponentProjectPackage.eINSTANCE);
        ImplementationtypesPackageImpl theImplementationtypesPackage = (ImplementationtypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") instanceof ImplementationtypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") : ImplementationtypesPackage.eINSTANCE);
        FormulasPackageImpl theFormulasPackage = (FormulasPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas") instanceof FormulasPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas") : FormulasPackage.eINSTANCE);
        XmldsigPackageImpl theXmldsigPackage = (XmldsigPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#") instanceof XmldsigPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#") : XmldsigPackage.eINSTANCE);
        theComponentSpecificationPackage.loadPackage();
        theAmd620Package.createPackageContents();
        theComponentMainPackage.createPackageContents();
        theComponentDataPackage.createPackageContents();
        theComponentImplementationPackage.createPackageContents();
        theComponentProjectPackage.createPackageContents();
        theImplementationtypesPackage.createPackageContents();
        theFormulasPackage.createPackageContents();
        theXmldsigPackage.createPackageContents();
        theAmd620Package.initializePackageContents();
        theComponentMainPackage.initializePackageContents();
        theComponentDataPackage.initializePackageContents();
        theComponentImplementationPackage.initializePackageContents();
        theComponentProjectPackage.initializePackageContents();
        theImplementationtypesPackage.initializePackageContents();
        theFormulasPackage.initializePackageContents();
        theXmldsigPackage.initializePackageContents();
        theComponentSpecificationPackage.fixPackageContents();
        EValidator.Registry.INSTANCE.put((Object)theComponentSpecificationPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return ComponentSpecificationValidator.INSTANCE;
            }
        });
        theComponentSpecificationPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://www.etas.com/ascet/amd/620/component_specification", (Object)theComponentSpecificationPackage);
        return theComponentSpecificationPackage;
    }

    @Override
    public EClass getActionsType() {
        if (this.actionsTypeEClass == null) {
            this.actionsTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(4);
        }
        return this.actionsTypeEClass;
    }

    @Override
    public EReference getActionsType_Action() {
        return (EReference)this.getActionsType().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getActionsType_Condition() {
        return (EReference)this.getActionsType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getActionsType1() {
        if (this.actionsType1EClass == null) {
            this.actionsType1EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(5);
        }
        return this.actionsType1EClass;
    }

    @Override
    public EReference getActionsType1_EntryAction() {
        return (EReference)this.getActionsType1().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getActionsType1_StaticAction() {
        return (EReference)this.getActionsType1().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getActionsType1_ExitAction() {
        return (EReference)this.getActionsType1().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getActionT() {
        if (this.actionTEClass == null) {
            this.actionTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(6);
        }
        return this.actionTEClass;
    }

    @Override
    public EReference getActionT_ESDLAction() {
        return (EReference)this.getActionT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getActionT_MethodAction() {
        return (EReference)this.getActionT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getActionType() {
        if (this.actionTypeEClass == null) {
            this.actionTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(7);
        }
        return this.actionTypeEClass;
    }

    @Override
    public EAttribute getActionType_GraphicOID() {
        return (EAttribute)this.getActionType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getBlockConnectorT() {
        if (this.blockConnectorTEClass == null) {
            this.blockConnectorTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(8);
        }
        return this.blockConnectorTEClass;
    }

    @Override
    public EReference getBlockConnectorT_Size() {
        return (EReference)this.getBlockConnectorT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getBlockConnectorT_ConnectionPoint() {
        return (EReference)this.getBlockConnectorT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getBlockConnectorT_Direction() {
        return (EAttribute)this.getBlockConnectorT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getBlockConnectorT_Flow() {
        return (EAttribute)this.getBlockConnectorT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getBlockConnectorT_TempVar() {
        return (EAttribute)this.getBlockConnectorT().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getBlockConnectorT_Visibility() {
        return (EAttribute)this.getBlockConnectorT().getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getBlockDiagramSpecificationT() {
        if (this.blockDiagramSpecificationTEClass == null) {
            this.blockDiagramSpecificationTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(9);
        }
        return this.blockDiagramSpecificationTEClass;
    }

    @Override
    public EReference getBlockDiagramSpecificationT_ESDLCode() {
        return (EReference)this.getBlockDiagramSpecificationT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getBlockDiagramSpecificationT_DiagramElements() {
        return (EReference)this.getBlockDiagramSpecificationT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getBlockInterfaceT() {
        if (this.blockInterfaceTEClass == null) {
            this.blockInterfaceTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(10);
        }
        return this.blockInterfaceTEClass;
    }

    @Override
    public EReference getBlockInterfaceT_ExternalConnector() {
        return (EReference)this.getBlockInterfaceT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getBlockInterfaceT_Name() {
        return (EAttribute)this.getBlockInterfaceT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getBooleanTableType() {
        if (this.booleanTableTypeEClass == null) {
            this.booleanTableTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(11);
        }
        return this.booleanTableTypeEClass;
    }

    @Override
    public EReference getBooleanTableType_InputColumns() {
        return (EReference)this.getBooleanTableType().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getBooleanTableType_OutputColumns() {
        return (EReference)this.getBooleanTableType().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getBooleanTableType_Combinations() {
        return (EAttribute)this.getBooleanTableType().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getBooleanTableType_Inputs() {
        return (EAttribute)this.getBooleanTableType().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getBooleanTableType_Outputs() {
        return (EAttribute)this.getBooleanTableType().getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getCCodeSpecificationT() {
        if (this.cCodeSpecificationTEClass == null) {
            this.cCodeSpecificationTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(12);
        }
        return this.cCodeSpecificationTEClass;
    }

    @Override
    public EReference getCCodeSpecificationT_CCode() {
        return (EReference)this.getCCodeSpecificationT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getCCodeSpecificationT_CtOutputs() {
        return (EAttribute)this.getCCodeSpecificationT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getCCodeType() {
        if (this.cCodeTypeEClass == null) {
            this.cCodeTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(13);
        }
        return this.cCodeTypeEClass;
    }

    @Override
    public EReference getCCodeType_CodeVariant() {
        return (EReference)this.getCCodeType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getCodeVariantType() {
        if (this.codeVariantTypeEClass == null) {
            this.codeVariantTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(14);
        }
        return this.codeVariantTypeEClass;
    }

    @Override
    public EReference getCodeVariantType_HeaderFile() {
        return (EReference)this.getCodeVariantType().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getCodeVariantType_CodeFile() {
        return (EReference)this.getCodeVariantType().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getCodeVariantType_ObjectFile() {
        return (EReference)this.getCodeVariantType().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getCodeVariantType_HeaderBlock() {
        return (EReference)this.getCodeVariantType().getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getCodeVariantType_MethodBodies() {
        return (EReference)this.getCodeVariantType().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getCodeVariantType_Generator() {
        return (EAttribute)this.getCodeVariantType().getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getCodeVariantType_ImplementationName() {
        return (EAttribute)this.getCodeVariantType().getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getCodeVariantType_ImplementationOID() {
        return (EAttribute)this.getCodeVariantType().getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getCodeVariantType_Target() {
        return (EAttribute)this.getCodeVariantType().getEStructuralFeatures().get(8);
    }

    @Override
    public EClass getColorT() {
        if (this.colorTEClass == null) {
            this.colorTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(15);
        }
        return this.colorTEClass;
    }

    @Override
    public EAttribute getColorT_Blue() {
        return (EAttribute)this.getColorT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getColorT_Green() {
        return (EAttribute)this.getColorT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getColorT_Red() {
        return (EAttribute)this.getColorT().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getColumnHeadingType() {
        if (this.columnHeadingTypeEClass == null) {
            this.columnHeadingTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(16);
        }
        return this.columnHeadingTypeEClass;
    }

    @Override
    public EAttribute getColumnHeadingType_Default() {
        return (EAttribute)this.getColumnHeadingType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getColumnHeadingType_ElementName() {
        return (EAttribute)this.getColumnHeadingType().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getColumnHeadingType_ElementOID() {
        return (EAttribute)this.getColumnHeadingType().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getColumnHeadingType_Index() {
        return (EAttribute)this.getColumnHeadingType().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getColumnHeadingType_MethodName() {
        return (EAttribute)this.getColumnHeadingType().getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getComplexElementT() {
        if (this.complexElementTEClass == null) {
            this.complexElementTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(17);
        }
        return this.complexElementTEClass;
    }

    @Override
    public EAttribute getComplexElementT_ElementName() {
        return (EAttribute)this.getComplexElementT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getComplexElementT_ElementOID() {
        return (EAttribute)this.getComplexElementT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getComplexElementT_MethodName() {
        return (EAttribute)this.getComplexElementT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getComplexElementT_Type() {
        return (EAttribute)this.getComplexElementT().getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getConditionalTableType() {
        if (this.conditionalTableTypeEClass == null) {
            this.conditionalTableTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(18);
        }
        return this.conditionalTableTypeEClass;
    }

    @Override
    public EReference getConditionalTableType_ConditionColumns() {
        return (EReference)this.getConditionalTableType().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getConditionalTableType_InstructionColumns() {
        return (EReference)this.getConditionalTableType().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getConditionalTableType_Conditions() {
        return (EAttribute)this.getConditionalTableType().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getConditionalTableType_Instructions() {
        return (EAttribute)this.getConditionalTableType().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getConditionalTableType_Rows() {
        return (EAttribute)this.getConditionalTableType().getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getConditionColumnsType() {
        if (this.conditionColumnsTypeEClass == null) {
            this.conditionColumnsTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(19);
        }
        return this.conditionColumnsTypeEClass;
    }

    @Override
    public EReference getConditionColumnsType_TableColumn() {
        return (EReference)this.getConditionColumnsType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getConditionType() {
        if (this.conditionTypeEClass == null) {
            this.conditionTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(20);
        }
        return this.conditionTypeEClass;
    }

    @Override
    public EAttribute getConditionType_GraphicOID() {
        return (EAttribute)this.getConditionType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getConnectionLineT() {
        if (this.connectionLineTEClass == null) {
            this.connectionLineTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(21);
        }
        return this.connectionLineTEClass;
    }

    @Override
    public EReference getConnectionLineT_BendPoint() {
        return (EReference)this.getConnectionLineT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getConnectionLineT_CommentLine() {
        return (EAttribute)this.getConnectionLineT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getConnectionPointT() {
        if (this.connectionPointTEClass == null) {
            this.connectionPointTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(22);
        }
        return this.connectionPointTEClass;
    }

    @Override
    public EReference getConnectionPointT_Position() {
        return (EReference)this.getConnectionPointT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getConnectionPointT_GraphicOID() {
        return (EAttribute)this.getConnectionPointT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getConnectionT() {
        if (this.connectionTEClass == null) {
            this.connectionTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(23);
        }
        return this.connectionTEClass;
    }

    @Override
    public EReference getConnectionT_ViewInfo() {
        return (EReference)this.getConnectionT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getConnectionT_LineStyle() {
        return (EReference)this.getConnectionT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getConnectionT_Start() {
        return (EReference)this.getConnectionT().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getConnectionT_End() {
        return (EReference)this.getConnectionT().getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getConnectionT_ConnectionLine() {
        return (EReference)this.getConnectionT().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getConnectionT_ConnectionPointNumber() {
        return (EAttribute)this.getConnectionT().getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getConnectorInterfaceType() {
        if (this.connectorInterfaceTypeEClass == null) {
            this.connectorInterfaceTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(24);
        }
        return this.connectorInterfaceTypeEClass;
    }

    @Override
    public EReference getConnectorInterfaceType_Connector() {
        return (EReference)this.getConnectorInterfaceType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getContentsComplexType() {
        if (this.contentsComplexTypeEClass == null) {
            this.contentsComplexTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(25);
        }
        return this.contentsComplexTypeEClass;
    }

    @Override
    public EReference getContentsComplexType_DiagramElement() {
        return (EReference)this.getContentsComplexType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getControlRteAccessT() {
        if (this.controlRteAccessTEClass == null) {
            this.controlRteAccessTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(26);
        }
        return this.controlRteAccessTEClass;
    }

    @Override
    public EReference getControlRteAccessT_Position() {
        return (EReference)this.getControlRteAccessT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getControlRteAccessT_Interfaces() {
        return (EReference)this.getControlRteAccessT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getControlRteAccessT_Access() {
        return (EAttribute)this.getControlRteAccessT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getControlRteAccessT_Arguments() {
        return (EAttribute)this.getControlRteAccessT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getControlRteAccessT_Returns() {
        return (EAttribute)this.getControlRteAccessT().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getControlRteAccessT_TempVar() {
        return (EAttribute)this.getControlRteAccessT().getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getControlRteAccessT_Type() {
        return (EAttribute)this.getControlRteAccessT().getEStructuralFeatures().get(6);
    }

    @Override
    public EClass getControlRteInvokeT() {
        if (this.controlRteInvokeTEClass == null) {
            this.controlRteInvokeTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(27);
        }
        return this.controlRteInvokeTEClass;
    }

    @Override
    public EAttribute getControlRteInvokeT_Access() {
        return (EAttribute)this.getControlRteInvokeT().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getControlT() {
        if (this.controlTEClass == null) {
            this.controlTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(28);
        }
        return this.controlTEClass;
    }

    @Override
    public EReference getControlT_Position() {
        return (EReference)this.getControlT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getControlT_Interfaces() {
        return (EReference)this.getControlT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getControlT_Size() {
        return (EReference)this.getControlT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getControlT_Arguments() {
        return (EAttribute)this.getControlT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getControlT_Returns() {
        return (EAttribute)this.getControlT().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getControlT_Type() {
        return (EAttribute)this.getControlT().getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getDiagramElementsComplexType() {
        if (this.diagramElementsComplexTypeEClass == null) {
            this.diagramElementsComplexTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(31);
        }
        return this.diagramElementsComplexTypeEClass;
    }

    @Override
    public EReference getDiagramElementsComplexType_DiagramElement() {
        return (EReference)this.getDiagramElementsComplexType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getDiagramElementT() {
        if (this.diagramElementTEClass == null) {
            this.diagramElementTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(32);
        }
        return this.diagramElementTEClass;
    }

    @Override
    public EReference getDiagramElementT_CustomerData() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getDiagramElementT_Operator() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getDiagramElementT_Control() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getDiagramElementT_ControlRteAccess() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getDiagramElementT_ControlRteInvoke() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(4);
    }

    @Override
    public EReference getDiagramElementT_Literal() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(5);
    }

    @Override
    public EReference getDiagramElementT_SimpleElement() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(6);
    }

    @Override
    public EReference getDiagramElementT_Resource() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(7);
    }

    @Override
    public EReference getDiagramElementT_ImplementationCast() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(8);
    }

    @Override
    public EReference getDiagramElementT_ComplexElement() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(9);
    }

    @Override
    public EReference getDiagramElementT_Comment() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(10);
    }

    @Override
    public EReference getDiagramElementT_Connection() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(11);
    }

    @Override
    public EReference getDiagramElementT_Hierarchy() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(12);
    }

    @Override
    public EReference getDiagramElementT_HierarchyConnector() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(13);
    }

    @Override
    public EReference getDiagramElementT_State() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(14);
    }

    @Override
    public EReference getDiagramElementT_HierarchyState() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(15);
    }

    @Override
    public EReference getDiagramElementT_Junction() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(16);
    }

    @Override
    public EReference getDiagramElementT_Transition() {
        return (EReference)this.getDiagramElementT().getEStructuralFeatures().get(17);
    }

    @Override
    public EAttribute getDiagramElementT_Ignore() {
        return (EAttribute)this.getDiagramElementT().getEStructuralFeatures().get(18);
    }

    @Override
    public EAttribute getDiagramElementT_StClass() {
        return (EAttribute)this.getDiagramElementT().getEStructuralFeatures().get(19);
    }

    @Override
    public EClass getDisablingModesType() {
        if (this.disablingModesTypeEClass == null) {
            this.disablingModesTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(37);
        }
        return this.disablingModesTypeEClass;
    }

    @Override
    public EReference getDisablingModesType_Mode() {
        return (EReference)this.getDisablingModesType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getDocumentRoot() {
        if (this.documentRootEClass == null) {
            this.documentRootEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(38);
        }
        return this.documentRootEClass;
    }

    @Override
    public EAttribute getDocumentRoot_Mixed() {
        return (EAttribute)this.getDocumentRoot().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getDocumentRoot_XMLNSPrefixMap() {
        return (EReference)this.getDocumentRoot().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getDocumentRoot_XSISchemaLocation() {
        return (EReference)this.getDocumentRoot().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getDocumentRoot_Specifications() {
        return (EReference)this.getDocumentRoot().getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getEntryActionType() {
        if (this.entryActionTypeEClass == null) {
            this.entryActionTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(39);
        }
        return this.entryActionTypeEClass;
    }

    @Override
    public EAttribute getEntryActionType_GraphicOID() {
        return (EAttribute)this.getEntryActionType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getESDLActionType() {
        if (this.esdlActionTypeEClass == null) {
            this.esdlActionTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(40);
        }
        return this.esdlActionTypeEClass;
    }

    @Override
    public EReference getESDLActionType_CodeBlock() {
        return (EReference)this.getESDLActionType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getESDLCodeT() {
        if (this.esdlCodeTEClass == null) {
            this.esdlCodeTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(41);
        }
        return this.esdlCodeTEClass;
    }

    @Override
    public EReference getESDLCodeT_MethodBodies() {
        return (EReference)this.getESDLCodeT().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getESDLSpecificationT() {
        if (this.esdlSpecificationTEClass == null) {
            this.esdlSpecificationTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(42);
        }
        return this.esdlSpecificationTEClass;
    }

    @Override
    public EReference getESDLSpecificationT_ESDLCode() {
        return (EReference)this.getESDLSpecificationT().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getEventSpecificationT() {
        if (this.eventSpecificationTEClass == null) {
            this.eventSpecificationTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(43);
        }
        return this.eventSpecificationTEClass;
    }

    @Override
    public EReference getEventSpecificationT_Events() {
        return (EReference)this.getEventSpecificationT().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getEventsType() {
        if (this.eventsTypeEClass == null) {
            this.eventsTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(44);
        }
        return this.eventsTypeEClass;
    }

    @Override
    public EReference getEventsType_Event() {
        return (EReference)this.getEventsType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getEventT() {
        if (this.eventTEClass == null) {
            this.eventTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(45);
        }
        return this.eventTEClass;
    }

    @Override
    public EReference getEventT_Runnables() {
        return (EReference)this.getEventT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getEventT_DisablingModes() {
        return (EReference)this.getEventT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getEventT_EventType() {
        return (EReference)this.getEventT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getEventT_Name() {
        return (EAttribute)this.getEventT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getEventT_UUID() {
        return (EAttribute)this.getEventT().getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getEventTypeType() {
        if (this.eventTypeTypeEClass == null) {
            this.eventTypeTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(46);
        }
        return this.eventTypeTypeEClass;
    }

    @Override
    public EReference getEventTypeType_TimingEvent() {
        return (EReference)this.getEventTypeType().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getEventTypeType_ModeSwitchEvent() {
        return (EReference)this.getEventTypeType().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getEventTypeType_OperationInvokedEvent() {
        return (EReference)this.getEventTypeType().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getExitActionType() {
        if (this.exitActionTypeEClass == null) {
            this.exitActionTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(47);
        }
        return this.exitActionTypeEClass;
    }

    @Override
    public EAttribute getExitActionType_GraphicOID() {
        return (EAttribute)this.getExitActionType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getFileListSpecificationT() {
        if (this.fileListSpecificationTEClass == null) {
            this.fileListSpecificationTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(48);
        }
        return this.fileListSpecificationTEClass;
    }

    @Override
    public EReference getFileListSpecificationT_File() {
        return (EReference)this.getFileListSpecificationT().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getFileReferenceT() {
        if (this.fileReferenceTEClass == null) {
            this.fileReferenceTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(49);
        }
        return this.fileReferenceTEClass;
    }

    @Override
    public EAttribute getFileReferenceT_Value() {
        return (EAttribute)this.getFileReferenceT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getFileReferenceT_Checksum() {
        return (EAttribute)this.getFileReferenceT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getFileReferenceT_Type() {
        return (EAttribute)this.getFileReferenceT().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getFileType() {
        if (this.fileTypeEClass == null) {
            this.fileTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(50);
        }
        return this.fileTypeEClass;
    }

    @Override
    public EAttribute getFileType_Name() {
        return (EAttribute)this.getFileType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getFileType_Location() {
        return (EAttribute)this.getFileType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getFormattedTextT() {
        if (this.formattedTextTEClass == null) {
            this.formattedTextTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(53);
        }
        return this.formattedTextTEClass;
    }

    @Override
    public EAttribute getFormattedTextT_Value() {
        return (EAttribute)this.getFormattedTextT().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getGenericDataT() {
        if (this.genericDataTEClass == null) {
            this.genericDataTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(54);
        }
        return this.genericDataTEClass;
    }

    @Override
    public EAttribute getGenericDataT_Any() {
        return (EAttribute)this.getGenericDataT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getGenericDataT_Name() {
        return (EAttribute)this.getGenericDataT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getGetSetPortBaseT() {
        if (this.getSetPortBaseTEClass == null) {
            this.getSetPortBaseTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(55);
        }
        return this.getSetPortBaseTEClass;
    }

    @Override
    public EAttribute getGetSetPortBaseT_ElementName() {
        return (EAttribute)this.getGetSetPortBaseT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getGetSetPortBaseT_ElementOID() {
        return (EAttribute)this.getGetSetPortBaseT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getGraphicObjectT() {
        if (this.graphicObjectTEClass == null) {
            this.graphicObjectTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(56);
        }
        return this.graphicObjectTEClass;
    }

    @Override
    public EReference getGraphicObjectT_ViewInfo() {
        return (EReference)this.getGraphicObjectT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getGraphicObjectT_LineStyle() {
        return (EReference)this.getGraphicObjectT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getGraphicObjectT_FillColor() {
        return (EReference)this.getGraphicObjectT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getGraphicObjectT_GraphicOID() {
        return (EAttribute)this.getGraphicObjectT().getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getGraphicSpecificationT() {
        if (this.graphicSpecificationTEClass == null) {
            this.graphicSpecificationTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(58);
        }
        return this.graphicSpecificationTEClass;
    }

    @Override
    public EAttribute getGraphicSpecificationT_HighestUsedGraphicalIdentifier() {
        return (EAttribute)this.getGraphicSpecificationT().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getHeaderFileType() {
        if (this.headerFileTypeEClass == null) {
            this.headerFileTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(59);
        }
        return this.headerFileTypeEClass;
    }

    @Override
    public EReference getHeaderFileType_File() {
        return (EReference)this.getHeaderFileType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getHeaderFileType_UseGlobal() {
        return (EAttribute)this.getHeaderFileType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getHierarchyConnectorType() {
        if (this.hierarchyConnectorTypeEClass == null) {
            this.hierarchyConnectorTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(60);
        }
        return this.hierarchyConnectorTypeEClass;
    }

    @Override
    public EClass getHierarchyStateT() {
        if (this.hierarchyStateTEClass == null) {
            this.hierarchyStateTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(61);
        }
        return this.hierarchyStateTEClass;
    }

    @Override
    public EReference getHierarchyStateT_Ports() {
        return (EReference)this.getHierarchyStateT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getHierarchyStateT_Contents() {
        return (EReference)this.getHierarchyStateT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getHierarchyT() {
        if (this.hierarchyTEClass == null) {
            this.hierarchyTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(62);
        }
        return this.hierarchyTEClass;
    }

    @Override
    public EReference getHierarchyT_Size() {
        return (EReference)this.getHierarchyT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getHierarchyT_Position() {
        return (EReference)this.getHierarchyT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getHierarchyT_Interfaces() {
        return (EReference)this.getHierarchyT().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getHierarchyT_LabelPosition() {
        return (EReference)this.getHierarchyT().getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getHierarchyT_Icon() {
        return (EReference)this.getHierarchyT().getEStructuralFeatures().get(4);
    }

    @Override
    public EReference getHierarchyT_Contents() {
        return (EReference)this.getHierarchyT().getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getHierarchyT_Name() {
        return (EAttribute)this.getHierarchyT().getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getHierarchyT_NameVisibility() {
        return (EAttribute)this.getHierarchyT().getEStructuralFeatures().get(7);
    }

    @Override
    public EClass getIconT() {
        if (this.iconTEClass == null) {
            this.iconTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(63);
        }
        return this.iconTEClass;
    }

    @Override
    public EReference getIconT_IconFile() {
        return (EReference)this.getIconT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getIconT_Size() {
        return (EReference)this.getIconT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getIconT_IconName() {
        return (EAttribute)this.getIconT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getIconT_IconOID() {
        return (EAttribute)this.getIconT().getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getImplementationCastT() {
        if (this.implementationCastTEClass == null) {
            this.implementationCastTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(64);
        }
        return this.implementationCastTEClass;
    }

    @Override
    public EReference getImplementationCastT_Interfaces() {
        return (EReference)this.getImplementationCastT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getImplementationCastT_TempVar() {
        return (EAttribute)this.getImplementationCastT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getInOutPortT() {
        if (this.inOutPortTEClass == null) {
            this.inOutPortTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(65);
        }
        return this.inOutPortTEClass;
    }

    @Override
    public EReference getInOutPortT_Position() {
        return (EReference)this.getInOutPortT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getInOutPortT_Name() {
        return (EAttribute)this.getInOutPortT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getInputColumnsType() {
        if (this.inputColumnsTypeEClass == null) {
            this.inputColumnsTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(66);
        }
        return this.inputColumnsTypeEClass;
    }

    @Override
    public EReference getInputColumnsType_TableColumn() {
        return (EReference)this.getInputColumnsType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getInputPortType() {
        if (this.inputPortTypeEClass == null) {
            this.inputPortTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(67);
        }
        return this.inputPortTypeEClass;
    }

    @Override
    public EAttribute getInputPortType_Index() {
        return (EAttribute)this.getInputPortType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getInputPortType_Name() {
        return (EAttribute)this.getInputPortType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getInstructionColumnsType() {
        if (this.instructionColumnsTypeEClass == null) {
            this.instructionColumnsTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(68);
        }
        return this.instructionColumnsTypeEClass;
    }

    @Override
    public EReference getInstructionColumnsType_TableColumn() {
        return (EReference)this.getInstructionColumnsType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getInterfaceElementType() {
        if (this.interfaceElementTypeEClass == null) {
            this.interfaceElementTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(69);
        }
        return this.interfaceElementTypeEClass;
    }

    @Override
    public EAttribute getInterfaceElementType_ElementName() {
        return (EAttribute)this.getInterfaceElementType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getInterfaceElementType_ElementOID() {
        return (EAttribute)this.getInterfaceElementType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getInterfacesType() {
        if (this.interfacesTypeEClass == null) {
            this.interfacesTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(70);
        }
        return this.interfacesTypeEClass;
    }

    @Override
    public EReference getInterfacesType_SelectorPort() {
        return (EReference)this.getInterfacesType().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getInterfacesType_ReturnPort() {
        return (EReference)this.getInterfacesType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getInterfacesType1() {
        if (this.interfacesType1EClass == null) {
            this.interfacesType1EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(71);
        }
        return this.interfacesType1EClass;
    }

    @Override
    public EReference getInterfacesType1_ReturnPort() {
        return (EReference)this.getInterfacesType1().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getInterfacesType2() {
        if (this.interfacesType2EClass == null) {
            this.interfacesType2EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(72);
        }
        return this.interfacesType2EClass;
    }

    @Override
    public EReference getInterfacesType2_ReturnPort() {
        return (EReference)this.getInterfacesType2().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getInterfacesType3() {
        if (this.interfacesType3EClass == null) {
            this.interfacesType3EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(73);
        }
        return this.interfacesType3EClass;
    }

    @Override
    public EReference getInterfacesType3_BlockInterface() {
        return (EReference)this.getInterfacesType3().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getInterfacesType4() {
        if (this.interfacesType4EClass == null) {
            this.interfacesType4EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(74);
        }
        return this.interfacesType4EClass;
    }

    @Override
    public EReference getInterfacesType4_ReturnPort() {
        return (EReference)this.getInterfacesType4().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getInterfacesType4_SelectorPort() {
        return (EReference)this.getInterfacesType4().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getInterfacesType5() {
        if (this.interfacesType5EClass == null) {
            this.interfacesType5EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(75);
        }
        return this.interfacesType5EClass;
    }

    @Override
    public EReference getInterfacesType5_ReturnPort() {
        return (EReference)this.getInterfacesType5().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getInterfacesType5_SelectorPort() {
        return (EReference)this.getInterfacesType5().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getInterfacesType6() {
        if (this.interfacesType6EClass == null) {
            this.interfacesType6EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(76);
        }
        return this.interfacesType6EClass;
    }

    @Override
    public EReference getInterfacesType6_ReturnPort() {
        return (EReference)this.getInterfacesType6().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getInterfacesType7() {
        if (this.interfacesType7EClass == null) {
            this.interfacesType7EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(77);
        }
        return this.interfacesType7EClass;
    }

    @Override
    public EAttribute getInterfacesType7_Group() {
        return (EAttribute)this.getInterfacesType7().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getInterfacesType7_MethodPort() {
        return (EReference)this.getInterfacesType7().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getInterfacesType7_ReturnPort() {
        return (EReference)this.getInterfacesType7().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getInterfacesType7_MemberSetPort() {
        return (EReference)this.getInterfacesType7().getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getInterfacesType7_MemberGetPort() {
        return (EReference)this.getInterfacesType7().getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getIntervalT() {
        if (this.intervalTEClass == null) {
            this.intervalTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(78);
        }
        return this.intervalTEClass;
    }

    @Override
    public EAttribute getIntervalT_Max() {
        return (EAttribute)this.getIntervalT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getIntervalT_Min() {
        return (EAttribute)this.getIntervalT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getItemRefT() {
        if (this.itemRefTEClass == null) {
            this.itemRefTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(79);
        }
        return this.itemRefTEClass;
    }

    @Override
    public EAttribute getItemRefT_Name() {
        return (EAttribute)this.getItemRefT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getItemRefT_OID() {
        return (EAttribute)this.getItemRefT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getJunctionT() {
        if (this.junctionTEClass == null) {
            this.junctionTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(80);
        }
        return this.junctionTEClass;
    }

    @Override
    public EReference getJunctionT_Size() {
        return (EReference)this.getJunctionT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getJunctionT_Position() {
        return (EReference)this.getJunctionT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getJunctionT_Interfaces() {
        return (EReference)this.getJunctionT().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getJunctionT_Icon() {
        return (EReference)this.getJunctionT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getJunctionT_Name() {
        return (EAttribute)this.getJunctionT().getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getLayoutT() {
        if (this.layoutTEClass == null) {
            this.layoutTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(81);
        }
        return this.layoutTEClass;
    }

    @Override
    public EReference getLayoutT_Position() {
        return (EReference)this.getLayoutT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getLayoutT_LabelPosition() {
        return (EReference)this.getLayoutT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getLayoutT_Interfaces() {
        return (EReference)this.getLayoutT().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getLayoutT_Size() {
        return (EReference)this.getLayoutT().getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getLayoutT_Icon() {
        return (EReference)this.getLayoutT().getEStructuralFeatures().get(4);
    }

    @Override
    public EReference getLayoutT_Symbol() {
        return (EReference)this.getLayoutT().getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getLayoutT_FlexibleCreated() {
        return (EAttribute)this.getLayoutT().getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getLayoutT_HideClassName() {
        return (EAttribute)this.getLayoutT().getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getLayoutT_HideIcon() {
        return (EAttribute)this.getLayoutT().getEStructuralFeatures().get(8);
    }

    @Override
    public EAttribute getLayoutT_HideName() {
        return (EAttribute)this.getLayoutT().getEStructuralFeatures().get(9);
    }

    @Override
    public EAttribute getLayoutT_HidePinNames() {
        return (EAttribute)this.getLayoutT().getEStructuralFeatures().get(10);
    }

    @Override
    public EAttribute getLayoutT_HideUnconnectedPorts() {
        return (EAttribute)this.getLayoutT().getEStructuralFeatures().get(11);
    }

    @Override
    public EClass getLineStyleT() {
        if (this.lineStyleTEClass == null) {
            this.lineStyleTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(82);
        }
        return this.lineStyleTEClass;
    }

    @Override
    public EReference getLineStyleT_Color() {
        return (EReference)this.getLineStyleT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getLineStyleT_Type() {
        return (EAttribute)this.getLineStyleT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getLineStyleT_Width() {
        return (EAttribute)this.getLineStyleT().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getLineT() {
        if (this.lineTEClass == null) {
            this.lineTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(83);
        }
        return this.lineTEClass;
    }

    @Override
    public EReference getLineT_PointA() {
        return (EReference)this.getLineT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getLineT_Direction() {
        return (EAttribute)this.getLineT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getLiteralT() {
        if (this.literalTEClass == null) {
            this.literalTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(84);
        }
        return this.literalTEClass;
    }

    @Override
    public EReference getLiteralT_Position() {
        return (EReference)this.getLiteralT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getLiteralT_Interfaces() {
        return (EReference)this.getLiteralT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getLiteralT_Value() {
        return (EAttribute)this.getLiteralT().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getMemberGetPortT() {
        if (this.memberGetPortTEClass == null) {
            this.memberGetPortTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(85);
        }
        return this.memberGetPortTEClass;
    }

    @Override
    public EClass getMemberSetPortT() {
        if (this.memberSetPortTEClass == null) {
            this.memberSetPortTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(86);
        }
        return this.memberSetPortTEClass;
    }

    @Override
    public EReference getMemberSetPortT_SequenceCall() {
        return (EReference)this.getMemberSetPortT().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getMethodActionType() {
        if (this.methodActionTypeEClass == null) {
            this.methodActionTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(87);
        }
        return this.methodActionTypeEClass;
    }

    @Override
    public EAttribute getMethodActionType_MethodName() {
        return (EAttribute)this.getMethodActionType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getMethodActionType_MethodOID() {
        return (EAttribute)this.getMethodActionType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getMethodBodiesComplexType() {
        if (this.methodBodiesComplexTypeEClass == null) {
            this.methodBodiesComplexTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(88);
        }
        return this.methodBodiesComplexTypeEClass;
    }

    @Override
    public EReference getMethodBodiesComplexType_MethodBody() {
        return (EReference)this.getMethodBodiesComplexType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getMethodBodyT() {
        if (this.methodBodyTEClass == null) {
            this.methodBodyTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(89);
        }
        return this.methodBodyTEClass;
    }

    @Override
    public EReference getMethodBodyT_HeaderBlock() {
        return (EReference)this.getMethodBodyT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getMethodBodyT_CodeBlock() {
        return (EReference)this.getMethodBodyT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getMethodBodyT_CustomerData() {
        return (EReference)this.getMethodBodyT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getMethodBodyT_MethodName() {
        return (EAttribute)this.getMethodBodyT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getMethodBodyT_MethodOID() {
        return (EAttribute)this.getMethodBodyT().getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getMethodPortT() {
        if (this.methodPortTEClass == null) {
            this.methodPortTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(90);
        }
        return this.methodPortTEClass;
    }

    @Override
    public EReference getMethodPortT_SequenceCall() {
        return (EReference)this.getMethodPortT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getMethodPortT_SelectorPort() {
        return (EReference)this.getMethodPortT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getMethodPortT_TriggerPort() {
        return (EReference)this.getMethodPortT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getMethodPortT_DefaultMethod() {
        return (EAttribute)this.getMethodPortT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getMethodPortT_MethodName() {
        return (EAttribute)this.getMethodPortT().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getMethodPortT_MethodOID() {
        return (EAttribute)this.getMethodPortT().getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getModeElementType() {
        if (this.modeElementTypeEClass == null) {
            this.modeElementTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(91);
        }
        return this.modeElementTypeEClass;
    }

    @Override
    public EAttribute getModeElementType_ElementName() {
        return (EAttribute)this.getModeElementType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getModeElementType_ElementOID() {
        return (EAttribute)this.getModeElementType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getModeSwitchEventType() {
        if (this.modeSwitchEventTypeEClass == null) {
            this.modeSwitchEventTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(92);
        }
        return this.modeSwitchEventTypeEClass;
    }

    @Override
    public EReference getModeSwitchEventType_AssignedMode() {
        return (EReference)this.getModeSwitchEventType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getModeSwitchEventType_ModeSwitchType() {
        return (EAttribute)this.getModeSwitchEventType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getModeT() {
        if (this.modeTEClass == null) {
            this.modeTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(95);
        }
        return this.modeTEClass;
    }

    @Override
    public EReference getModeT_InterfaceElement() {
        return (EReference)this.getModeT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getModeT_ModeElement() {
        return (EReference)this.getModeT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getModeT_ModeValue() {
        return (EAttribute)this.getModeT().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getNotesT() {
        if (this.notesTEClass == null) {
            this.notesTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(96);
        }
        return this.notesTEClass;
    }

    @Override
    public EReference getNotesT_Note() {
        return (EReference)this.getNotesT().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getNoteType() {
        if (this.noteTypeEClass == null) {
            this.noteTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(97);
        }
        return this.noteTypeEClass;
    }

    @Override
    public EReference getNoteType_Text() {
        return (EReference)this.getNoteType().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getNoteType_View() {
        return (EReference)this.getNoteType().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getNoteType_Name() {
        return (EAttribute)this.getNoteType().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getOperationInvokedEventType() {
        if (this.operationInvokedEventTypeEClass == null) {
            this.operationInvokedEventTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(103);
        }
        return this.operationInvokedEventTypeEClass;
    }

    @Override
    public EAttribute getOperationInvokedEventType_OperationName() {
        return (EAttribute)this.getOperationInvokedEventType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getOperationInvokedEventType_OperationOID() {
        return (EAttribute)this.getOperationInvokedEventType().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getOperationInvokedEventType_PortName() {
        return (EAttribute)this.getOperationInvokedEventType().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getOperationInvokedEventType_PortOID() {
        return (EAttribute)this.getOperationInvokedEventType().getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getOperatorT() {
        if (this.operatorTEClass == null) {
            this.operatorTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(104);
        }
        return this.operatorTEClass;
    }

    @Override
    public EReference getOperatorT_Position() {
        return (EReference)this.getOperatorT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getOperatorT_Interfaces() {
        return (EReference)this.getOperatorT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getOperatorT_Arguments() {
        return (EAttribute)this.getOperatorT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getOperatorT_OldFashion() {
        return (EAttribute)this.getOperatorT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getOperatorT_Returns() {
        return (EAttribute)this.getOperatorT().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getOperatorT_TempVar() {
        return (EAttribute)this.getOperatorT().getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getOperatorT_Type() {
        return (EAttribute)this.getOperatorT().getEStructuralFeatures().get(6);
    }

    @Override
    public EClass getOperatorType() {
        if (this.operatorTypeEClass == null) {
            this.operatorTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(107);
        }
        return this.operatorTypeEClass;
    }

    @Override
    public EClass getOptionT() {
        if (this.optionTEClass == null) {
            this.optionTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(108);
        }
        return this.optionTEClass;
    }

    @Override
    public EAttribute getOptionT_Name() {
        return (EAttribute)this.getOptionT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getOptionT_Type() {
        return (EAttribute)this.getOptionT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getOptionT_Value() {
        return (EAttribute)this.getOptionT().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getOutputColumnsType() {
        if (this.outputColumnsTypeEClass == null) {
            this.outputColumnsTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(109);
        }
        return this.outputColumnsTypeEClass;
    }

    @Override
    public EReference getOutputColumnsType_TableColumn() {
        return (EReference)this.getOutputColumnsType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getPinT() {
        if (this.pinTEClass == null) {
            this.pinTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(110);
        }
        return this.pinTEClass;
    }

    @Override
    public EReference getPinT_Position() {
        return (EReference)this.getPinT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getPinT_Direction() {
        return (EAttribute)this.getPinT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getPinT_GraphicOID() {
        return (EAttribute)this.getPinT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getPinT_Name() {
        return (EAttribute)this.getPinT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getPinT_NameVisibility() {
        return (EAttribute)this.getPinT().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getPinT_Visibility() {
        return (EAttribute)this.getPinT().getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getPointT() {
        if (this.pointTEClass == null) {
            this.pointTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(111);
        }
        return this.pointTEClass;
    }

    @Override
    public EAttribute getPointT_X() {
        return (EAttribute)this.getPointT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getPointT_Y() {
        return (EAttribute)this.getPointT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getPortsType() {
        if (this.portsTypeEClass == null) {
            this.portsTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(112);
        }
        return this.portsTypeEClass;
    }

    @Override
    public EReference getPortsType_BlockInterface() {
        return (EReference)this.getPortsType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getPortT() {
        if (this.portTEClass == null) {
            this.portTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(113);
        }
        return this.portTEClass;
    }

    @Override
    public EAttribute getPortT_GraphicOID() {
        return (EAttribute)this.getPortT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getPortT_Location() {
        return (EAttribute)this.getPortT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getProjectSpecificationT() {
        if (this.projectSpecificationTEClass == null) {
            this.projectSpecificationTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(114);
        }
        return this.projectSpecificationTEClass;
    }

    @Override
    public EReference getProjectSpecificationT_ESDLCode() {
        return (EReference)this.getProjectSpecificationT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getProjectSpecificationT_DiagramElements() {
        return (EReference)this.getProjectSpecificationT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getResourceInterfaceType() {
        if (this.resourceInterfaceTypeEClass == null) {
            this.resourceInterfaceTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(117);
        }
        return this.resourceInterfaceTypeEClass;
    }

    @Override
    public EReference getResourceInterfaceType_ReservePort() {
        return (EReference)this.getResourceInterfaceType().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getResourceInterfaceType_ReleasePort() {
        return (EReference)this.getResourceInterfaceType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getResourceT() {
        if (this.resourceTEClass == null) {
            this.resourceTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(118);
        }
        return this.resourceTEClass;
    }

    @Override
    public EReference getResourceT_Interfaces() {
        return (EReference)this.getResourceT().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getReturnPortT() {
        if (this.returnPortTEClass == null) {
            this.returnPortTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(119);
        }
        return this.returnPortTEClass;
    }

    @Override
    public EReference getReturnPortT_Position() {
        return (EReference)this.getReturnPortT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getReturnPortT_SelectorPort() {
        return (EReference)this.getReturnPortT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getReturnPortT_DefaultPort() {
        return (EAttribute)this.getReturnPortT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getReturnPortT_MethodName() {
        return (EAttribute)this.getReturnPortT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getReturnPortT_MethodOID() {
        return (EAttribute)this.getReturnPortT().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getReturnPortT_NameVisibility() {
        return (EAttribute)this.getReturnPortT().getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getReturnPortT_ReturnElementOID() {
        return (EAttribute)this.getReturnPortT().getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getReturnPortT_TempVar() {
        return (EAttribute)this.getReturnPortT().getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getReturnPortT_Visibility() {
        return (EAttribute)this.getReturnPortT().getEStructuralFeatures().get(8);
    }

    @Override
    public EClass getReturnPortType() {
        if (this.returnPortTypeEClass == null) {
            this.returnPortTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(120);
        }
        return this.returnPortTypeEClass;
    }

    @Override
    public EAttribute getReturnPortType_Index() {
        return (EAttribute)this.getReturnPortType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getReturnPortType_Label() {
        return (EAttribute)this.getReturnPortType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getReturnPortType1() {
        if (this.returnPortType1EClass == null) {
            this.returnPortType1EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(121);
        }
        return this.returnPortType1EClass;
    }

    @Override
    public EReference getReturnPortType1_SelectorPort() {
        return (EReference)this.getReturnPortType1().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getReturnPortType1_Index() {
        return (EAttribute)this.getReturnPortType1().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getReturnPortType1_Label() {
        return (EAttribute)this.getReturnPortType1().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getReturnPortType2() {
        if (this.returnPortType2EClass == null) {
            this.returnPortType2EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(122);
        }
        return this.returnPortType2EClass;
    }

    @Override
    public EReference getReturnPortType2_SelectorPort() {
        return (EReference)this.getReturnPortType2().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getReturnPortType2_InputPort() {
        return (EReference)this.getReturnPortType2().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getRunnablesType() {
        if (this.runnablesTypeEClass == null) {
            this.runnablesTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(123);
        }
        return this.runnablesTypeEClass;
    }

    @Override
    public EReference getRunnablesType_Runnable() {
        return (EReference)this.getRunnablesType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getRunnableType() {
        if (this.runnableTypeEClass == null) {
            this.runnableTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(124);
        }
        return this.runnableTypeEClass;
    }

    @Override
    public EAttribute getRunnableType_Index() {
        return (EAttribute)this.getRunnableType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getRunnableType_RunnableName() {
        return (EAttribute)this.getRunnableType().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getRunnableType_RunnableOID() {
        return (EAttribute)this.getRunnableType().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getSelectorPortT() {
        if (this.selectorPortTEClass == null) {
            this.selectorPortTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(125);
        }
        return this.selectorPortTEClass;
    }

    @Override
    public EReference getSelectorPortT_Position() {
        return (EReference)this.getSelectorPortT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getSelectorPortT_Direction() {
        return (EAttribute)this.getSelectorPortT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getSelectorPortT_ElementName() {
        return (EAttribute)this.getSelectorPortT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getSelectorPortT_ElementOID() {
        return (EAttribute)this.getSelectorPortT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getSelectorPortT_GraphicOID() {
        return (EAttribute)this.getSelectorPortT().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getSelectorPortT_Name() {
        return (EAttribute)this.getSelectorPortT().getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getSelectorPortT_NameVisibility() {
        return (EAttribute)this.getSelectorPortT().getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getSelectorPortT_Visibility() {
        return (EAttribute)this.getSelectorPortT().getEStructuralFeatures().get(7);
    }

    @Override
    public EClass getSelectorPortType() {
        if (this.selectorPortTypeEClass == null) {
            this.selectorPortTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(126);
        }
        return this.selectorPortTypeEClass;
    }

    @Override
    public EAttribute getSelectorPortType_Index() {
        return (EAttribute)this.getSelectorPortType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getSelectorPortType_Label() {
        return (EAttribute)this.getSelectorPortType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getSelectorPortType1() {
        if (this.selectorPortType1EClass == null) {
            this.selectorPortType1EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(127);
        }
        return this.selectorPortType1EClass;
    }

    @Override
    public EReference getSelectorPortType1_SequenceCall() {
        return (EReference)this.getSelectorPortType1().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getSelectorPortType2() {
        if (this.selectorPortType2EClass == null) {
            this.selectorPortType2EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(128);
        }
        return this.selectorPortType2EClass;
    }

    @Override
    public EAttribute getSelectorPortType2_Index() {
        return (EAttribute)this.getSelectorPortType2().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getSequenceCallT() {
        if (this.sequenceCallTEClass == null) {
            this.sequenceCallTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(129);
        }
        return this.sequenceCallTEClass;
    }

    @Override
    public EReference getSequenceCallT_Position() {
        return (EReference)this.getSequenceCallT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getSequenceCallT_ConnectOID() {
        return (EAttribute)this.getSequenceCallT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getSequenceCallT_EndAtomic() {
        return (EAttribute)this.getSequenceCallT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getSequenceCallT_GraphicOID() {
        return (EAttribute)this.getSequenceCallT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getSequenceCallT_MethodName() {
        return (EAttribute)this.getSequenceCallT().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getSequenceCallT_MethodOID() {
        return (EAttribute)this.getSequenceCallT().getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getSequenceCallT_SequenceNumber() {
        return (EAttribute)this.getSequenceCallT().getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getSequenceCallT_StartAtomic() {
        return (EAttribute)this.getSequenceCallT().getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getSequenceCallT_UserVisibility() {
        return (EAttribute)this.getSequenceCallT().getEStructuralFeatures().get(8);
    }

    @Override
    public EClass getSequencedPortT() {
        if (this.sequencedPortTEClass == null) {
            this.sequencedPortTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(130);
        }
        return this.sequencedPortTEClass;
    }

    @Override
    public EReference getSequencedPortT_SequenceCall() {
        return (EReference)this.getSequencedPortT().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getSimpleElementBaseT() {
        if (this.simpleElementBaseTEClass == null) {
            this.simpleElementBaseTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(131);
        }
        return this.simpleElementBaseTEClass;
    }

    @Override
    public EReference getSimpleElementBaseT_Position() {
        return (EReference)this.getSimpleElementBaseT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getSimpleElementBaseT_LabelPosition() {
        return (EReference)this.getSimpleElementBaseT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getSimpleElementBaseT_ElementName() {
        return (EAttribute)this.getSimpleElementBaseT().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getSimpleElementBaseT_ElementOID() {
        return (EAttribute)this.getSimpleElementBaseT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getSimpleElementBaseT_MethodName() {
        return (EAttribute)this.getSimpleElementBaseT().getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getSimpleElementT() {
        if (this.simpleElementTEClass == null) {
            this.simpleElementTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(132);
        }
        return this.simpleElementTEClass;
    }

    @Override
    public EReference getSimpleElementT_Interfaces() {
        return (EReference)this.getSimpleElementT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getSimpleElementT_Type() {
        return (EAttribute)this.getSimpleElementT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getSizeT() {
        if (this.sizeTEClass == null) {
            this.sizeTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(133);
        }
        return this.sizeTEClass;
    }

    @Override
    public EAttribute getSizeT_X() {
        return (EAttribute)this.getSizeT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getSizeT_Y() {
        return (EAttribute)this.getSizeT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getSpecificationsType() {
        if (this.specificationsTypeEClass == null) {
            this.specificationsTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(134);
        }
        return this.specificationsTypeEClass;
    }

    @Override
    public EReference getSpecificationsType_Layout() {
        return (EReference)this.getSpecificationsType().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getSpecificationsType_Specification() {
        return (EReference)this.getSpecificationsType().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getSpecificationsType_EventSpecification() {
        return (EReference)this.getSpecificationsType().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getSpecificationsType_FileListSpecification() {
        return (EReference)this.getSpecificationsType().getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getSpecificationsType_Signature() {
        return (EReference)this.getSpecificationsType().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getSpecificationsType_SchemaVersion() {
        return (EAttribute)this.getSpecificationsType().getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getSpecificationsType_ToolVersion() {
        return (EAttribute)this.getSpecificationsType().getEStructuralFeatures().get(6);
    }

    @Override
    public EClass getSpecificationT() {
        if (this.specificationTEClass == null) {
            this.specificationTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(135);
        }
        return this.specificationTEClass;
    }

    @Override
    public EReference getSpecificationT_TimeStamp() {
        return (EReference)this.getSpecificationT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getSpecificationT_BlockDiagramSpecification() {
        return (EReference)this.getSpecificationT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getSpecificationT_AtomicSoftwareComponentSpecification() {
        return (EReference)this.getSpecificationT().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getSpecificationT_MethodInterfaceSpecification() {
        return (EReference)this.getSpecificationT().getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getSpecificationT_TableSpecification() {
        return (EReference)this.getSpecificationT().getEStructuralFeatures().get(4);
    }

    @Override
    public EReference getSpecificationT_ESDLSpecification() {
        return (EReference)this.getSpecificationT().getEStructuralFeatures().get(5);
    }

    @Override
    public EReference getSpecificationT_CCodeSpecification() {
        return (EReference)this.getSpecificationT().getEStructuralFeatures().get(6);
    }

    @Override
    public EReference getSpecificationT_StateMachineSpecification() {
        return (EReference)this.getSpecificationT().getEStructuralFeatures().get(7);
    }

    @Override
    public EReference getSpecificationT_ProjectSpecification() {
        return (EReference)this.getSpecificationT().getEStructuralFeatures().get(8);
    }

    @Override
    public EAttribute getSpecificationT_Name() {
        return (EAttribute)this.getSpecificationT().getEStructuralFeatures().get(9);
    }

    @Override
    public EAttribute getSpecificationT_Public() {
        return (EAttribute)this.getSpecificationT().getEStructuralFeatures().get(10);
    }

    @Override
    public EAttribute getSpecificationT_UUID() {
        return (EAttribute)this.getSpecificationT().getEStructuralFeatures().get(11);
    }

    @Override
    public EClass getSpecificationType() {
        if (this.specificationTypeEClass == null) {
            this.specificationTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(136);
        }
        return this.specificationTypeEClass;
    }

    @Override
    public EClass getStateMachineSpecificationT() {
        if (this.stateMachineSpecificationTEClass == null) {
            this.stateMachineSpecificationTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(137);
        }
        return this.stateMachineSpecificationTEClass;
    }

    @Override
    public EReference getStateMachineSpecificationT_ESDLCode() {
        return (EReference)this.getStateMachineSpecificationT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getStateMachineSpecificationT_DiagramElements() {
        return (EReference)this.getStateMachineSpecificationT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getStateT() {
        if (this.stateTEClass == null) {
            this.stateTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(138);
        }
        return this.stateTEClass;
    }

    @Override
    public EReference getStateT_Size() {
        return (EReference)this.getStateT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getStateT_Position() {
        return (EReference)this.getStateT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getStateT_Interfaces() {
        return (EReference)this.getStateT().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getStateT_Icon() {
        return (EReference)this.getStateT().getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getStateT_Actions() {
        return (EReference)this.getStateT().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getStateT_History() {
        return (EAttribute)this.getStateT().getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getStateT_Name() {
        return (EAttribute)this.getStateT().getEStructuralFeatures().get(6);
    }

    @Override
    public EAttribute getStateT_StartState() {
        return (EAttribute)this.getStateT().getEStructuralFeatures().get(7);
    }

    @Override
    public EClass getStaticActionType() {
        if (this.staticActionTypeEClass == null) {
            this.staticActionTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(139);
        }
        return this.staticActionTypeEClass;
    }

    @Override
    public EAttribute getStaticActionType_GraphicOID() {
        return (EAttribute)this.getStaticActionType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getSymbolT() {
        if (this.symbolTEClass == null) {
            this.symbolTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(140);
        }
        return this.symbolTEClass;
    }

    @Override
    public EClass getTableCellType() {
        if (this.tableCellTypeEClass == null) {
            this.tableCellTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(141);
        }
        return this.tableCellTypeEClass;
    }

    @Override
    public EAttribute getTableCellType_Value() {
        return (EAttribute)this.getTableCellType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTableCellType_Index() {
        return (EAttribute)this.getTableCellType().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getTableColumnT() {
        if (this.tableColumnTEClass == null) {
            this.tableColumnTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(142);
        }
        return this.tableColumnTEClass;
    }

    @Override
    public EReference getTableColumnT_ColumnHeading() {
        return (EReference)this.getTableColumnT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getTableColumnT_TableCell() {
        return (EReference)this.getTableColumnT().getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getTableSpecificationT() {
        if (this.tableSpecificationTEClass == null) {
            this.tableSpecificationTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(143);
        }
        return this.tableSpecificationTEClass;
    }

    @Override
    public EReference getTableSpecificationT_ESDLCode() {
        return (EReference)this.getTableSpecificationT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getTableSpecificationT_ConditionalTable() {
        return (EReference)this.getTableSpecificationT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getTableSpecificationT_BooleanTable() {
        return (EReference)this.getTableSpecificationT().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getTextT() {
        if (this.textTEClass == null) {
            this.textTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(144);
        }
        return this.textTEClass;
    }

    @Override
    public EReference getTextT_ViewInfo() {
        return (EReference)this.getTextT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getTextT_Position() {
        return (EReference)this.getTextT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getTextT_Offset() {
        return (EReference)this.getTextT().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getTextT_Text() {
        return (EReference)this.getTextT().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getTextT_GraphicOID() {
        return (EAttribute)this.getTextT().getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getTextT_Visible() {
        return (EAttribute)this.getTextT().getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getTimeStampT() {
        if (this.timeStampTEClass == null) {
            this.timeStampTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(145);
        }
        return this.timeStampTEClass;
    }

    @Override
    public EAttribute getTimeStampT_TimeStampCounter() {
        return (EAttribute)this.getTimeStampT().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTimeStampT_TimeStampKey() {
        return (EAttribute)this.getTimeStampT().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getTimeStampT_TimeStampValue() {
        return (EAttribute)this.getTimeStampT().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getTimingEventType() {
        if (this.timingEventTypeEClass == null) {
            this.timingEventTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(146);
        }
        return this.timingEventTypeEClass;
    }

    @Override
    public EAttribute getTimingEventType_Period() {
        return (EAttribute)this.getTimingEventType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getTransitionT() {
        if (this.transitionTEClass == null) {
            this.transitionTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(147);
        }
        return this.transitionTEClass;
    }

    @Override
    public EReference getTransitionT_Start() {
        return (EReference)this.getTransitionT().getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getTransitionT_End() {
        return (EReference)this.getTransitionT().getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getTransitionT_ConnectionLine() {
        return (EReference)this.getTransitionT().getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getTransitionT_LabelPosition() {
        return (EReference)this.getTransitionT().getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getTransitionT_Actions() {
        return (EReference)this.getTransitionT().getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getTransitionType() {
        if (this.transitionTypeEClass == null) {
            this.transitionTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(148);
        }
        return this.transitionTypeEClass;
    }

    @Override
    public EAttribute getTransitionType_Priority() {
        return (EAttribute)this.getTransitionType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTransitionType_TriggerName() {
        return (EAttribute)this.getTransitionType().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getTransitionType_TriggerOID() {
        return (EAttribute)this.getTransitionType().getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getTriggerPortType() {
        if (this.triggerPortTypeEClass == null) {
            this.triggerPortTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(149);
        }
        return this.triggerPortTypeEClass;
    }

    @Override
    public EReference getTriggerPortType_Position() {
        return (EReference)this.getTriggerPortType().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTriggerPortType_Direction() {
        return (EAttribute)this.getTriggerPortType().getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getTriggerPortType_GraphicOID() {
        return (EAttribute)this.getTriggerPortType().getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getTriggerPortType_NameVisibility() {
        return (EAttribute)this.getTriggerPortType().getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getTriggerPortType_Visibility() {
        return (EAttribute)this.getTriggerPortType().getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getViewInfoT() {
        if (this.viewInfoTEClass == null) {
            this.viewInfoTEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(162);
        }
        return this.viewInfoTEClass;
    }

    @Override
    public EReference getViewInfoT_View() {
        return (EReference)this.getViewInfoT().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getViewType() {
        if (this.viewTypeEClass == null) {
            this.viewTypeEClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(163);
        }
        return this.viewTypeEClass;
    }

    @Override
    public EAttribute getViewType_Name() {
        return (EAttribute)this.getViewType().getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getViewType1() {
        if (this.viewType1EClass == null) {
            this.viewType1EClass = (EClass)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(164);
        }
        return this.viewType1EClass;
    }

    @Override
    public EAttribute getViewType1_Name() {
        return (EAttribute)this.getViewType1().getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getViewType1_Visibility() {
        return (EAttribute)this.getViewType1().getEStructuralFeatures().get(1);
    }

    @Override
    public EEnum getAccessType() {
        if (this.accessTypeEEnum == null) {
            this.accessTypeEEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(0);
        }
        return this.accessTypeEEnum;
    }

    @Override
    public EEnum getAccessType1() {
        if (this.accessType1EEnum == null) {
            this.accessType1EEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(1);
        }
        return this.accessType1EEnum;
    }

    @Override
    public EEnum getCtOutputsType() {
        if (this.ctOutputsTypeEEnum == null) {
            this.ctOutputsTypeEEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(29);
        }
        return this.ctOutputsTypeEEnum;
    }

    @Override
    public EEnum getDirectionType() {
        if (this.directionTypeEEnum == null) {
            this.directionTypeEEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(33);
        }
        return this.directionTypeEEnum;
    }

    @Override
    public EEnum getDirectionType1() {
        if (this.directionType1EEnum == null) {
            this.directionType1EEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(34);
        }
        return this.directionType1EEnum;
    }

    @Override
    public EEnum getFlowType() {
        if (this.flowTypeEEnum == null) {
            this.flowTypeEEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(51);
        }
        return this.flowTypeEEnum;
    }

    @Override
    public EEnum getModeSwitchTypeType() {
        if (this.modeSwitchTypeTypeEEnum == null) {
            this.modeSwitchTypeTypeEEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(93);
        }
        return this.modeSwitchTypeTypeEEnum;
    }

    @Override
    public EEnum getOperatorTType() {
        if (this.operatorTTypeEEnum == null) {
            this.operatorTTypeEEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(105);
        }
        return this.operatorTTypeEEnum;
    }

    @Override
    public EEnum getPublicType() {
        if (this.publicTypeEEnum == null) {
            this.publicTypeEEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(115);
        }
        return this.publicTypeEEnum;
    }

    @Override
    public EEnum getTypeType() {
        if (this.typeTypeEEnum == null) {
            this.typeTypeEEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(150);
        }
        return this.typeTypeEEnum;
    }

    @Override
    public EEnum getTypeType1() {
        if (this.typeType1EEnum == null) {
            this.typeType1EEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(151);
        }
        return this.typeType1EEnum;
    }

    @Override
    public EEnum getTypeType2() {
        if (this.typeType2EEnum == null) {
            this.typeType2EEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(152);
        }
        return this.typeType2EEnum;
    }

    @Override
    public EEnum getTypeType3() {
        if (this.typeType3EEnum == null) {
            this.typeType3EEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(153);
        }
        return this.typeType3EEnum;
    }

    @Override
    public EEnum getTypeType4() {
        if (this.typeType4EEnum == null) {
            this.typeType4EEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(154);
        }
        return this.typeType4EEnum;
    }

    @Override
    public EEnum getTypeType5() {
        if (this.typeType5EEnum == null) {
            this.typeType5EEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(155);
        }
        return this.typeType5EEnum;
    }

    @Override
    public EEnum getVisibilityType() {
        if (this.visibilityTypeEEnum == null) {
            this.visibilityTypeEEnum = (EEnum)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(165);
        }
        return this.visibilityTypeEEnum;
    }

    @Override
    public EDataType getAccessTypeObject() {
        if (this.accessTypeObjectEDataType == null) {
            this.accessTypeObjectEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(2);
        }
        return this.accessTypeObjectEDataType;
    }

    @Override
    public EDataType getAccessTypeObject1() {
        if (this.accessTypeObject1EDataType == null) {
            this.accessTypeObject1EDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(3);
        }
        return this.accessTypeObject1EDataType;
    }

    @Override
    public EDataType getCtOutputsTypeObject() {
        if (this.ctOutputsTypeObjectEDataType == null) {
            this.ctOutputsTypeObjectEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(30);
        }
        return this.ctOutputsTypeObjectEDataType;
    }

    @Override
    public EDataType getDirectionTypeObject() {
        if (this.directionTypeObjectEDataType == null) {
            this.directionTypeObjectEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(35);
        }
        return this.directionTypeObjectEDataType;
    }

    @Override
    public EDataType getDirectionTypeObject1() {
        if (this.directionTypeObject1EDataType == null) {
            this.directionTypeObject1EDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(36);
        }
        return this.directionTypeObject1EDataType;
    }

    @Override
    public EDataType getFlowTypeObject() {
        if (this.flowTypeObjectEDataType == null) {
            this.flowTypeObjectEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(52);
        }
        return this.flowTypeObjectEDataType;
    }

    @Override
    public EDataType getGraphicOIDT() {
        if (this.graphicOIDTEDataType == null) {
            this.graphicOIDTEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(57);
        }
        return this.graphicOIDTEDataType;
    }

    @Override
    public EDataType getModeSwitchTypeTypeObject() {
        if (this.modeSwitchTypeTypeObjectEDataType == null) {
            this.modeSwitchTypeTypeObjectEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(94);
        }
        return this.modeSwitchTypeTypeObjectEDataType;
    }

    @Override
    public EDataType getNumberOrFraction() {
        if (this.numberOrFractionEDataType == null) {
            this.numberOrFractionEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(98);
        }
        return this.numberOrFractionEDataType;
    }

    @Override
    public EDataType getNumberOrFractionMember1() {
        if (this.numberOrFractionMember1EDataType == null) {
            this.numberOrFractionMember1EDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(99);
        }
        return this.numberOrFractionMember1EDataType;
    }

    @Override
    public EDataType getNzqr() {
        if (this.nzqrEDataType == null) {
            this.nzqrEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(100);
        }
        return this.nzqrEDataType;
    }

    @Override
    public EDataType getNzqrMember2() {
        if (this.nzqrMember2EDataType == null) {
            this.nzqrMember2EDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(101);
        }
        return this.nzqrMember2EDataType;
    }

    @Override
    public EDataType getOID() {
        if (this.oidEDataType == null) {
            this.oidEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(102);
        }
        return this.oidEDataType;
    }

    @Override
    public EDataType getOperatorTTypeObject() {
        if (this.operatorTTypeObjectEDataType == null) {
            this.operatorTTypeObjectEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(106);
        }
        return this.operatorTTypeObjectEDataType;
    }

    @Override
    public EDataType getPublicTypeObject() {
        if (this.publicTypeObjectEDataType == null) {
            this.publicTypeObjectEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(116);
        }
        return this.publicTypeObjectEDataType;
    }

    @Override
    public EDataType getTypeTypeObject() {
        if (this.typeTypeObjectEDataType == null) {
            this.typeTypeObjectEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(156);
        }
        return this.typeTypeObjectEDataType;
    }

    @Override
    public EDataType getTypeTypeObject1() {
        if (this.typeTypeObject1EDataType == null) {
            this.typeTypeObject1EDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(157);
        }
        return this.typeTypeObject1EDataType;
    }

    @Override
    public EDataType getTypeTypeObject2() {
        if (this.typeTypeObject2EDataType == null) {
            this.typeTypeObject2EDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(158);
        }
        return this.typeTypeObject2EDataType;
    }

    @Override
    public EDataType getTypeTypeObject3() {
        if (this.typeTypeObject3EDataType == null) {
            this.typeTypeObject3EDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(159);
        }
        return this.typeTypeObject3EDataType;
    }

    @Override
    public EDataType getTypeTypeObject4() {
        if (this.typeTypeObject4EDataType == null) {
            this.typeTypeObject4EDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(160);
        }
        return this.typeTypeObject4EDataType;
    }

    @Override
    public EDataType getTypeTypeObject5() {
        if (this.typeTypeObject5EDataType == null) {
            this.typeTypeObject5EDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(161);
        }
        return this.typeTypeObject5EDataType;
    }

    @Override
    public EDataType getVisibilityTypeObject() {
        if (this.visibilityTypeObjectEDataType == null) {
            this.visibilityTypeObjectEDataType = (EDataType)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification").getEClassifiers().get(166);
        }
        return this.visibilityTypeObjectEDataType;
    }

    @Override
    public ComponentSpecificationFactory getComponentSpecificationFactory() {
        return (ComponentSpecificationFactory)this.getEFactoryInstance();
    }

    public void loadPackage() {
        if (this.isLoaded) {
            return;
        }
        this.isLoaded = true;
        URL url = this.getClass().getResource(this.packageFilename);
        if (url == null) {
            throw new RuntimeException("Missing serialized package: " + this.packageFilename);
        }
        URI uri = URI.createURI((String)url.toString());
        Resource resource = new EcoreResourceFactoryImpl().createResource(uri);
        try {
            resource.load(null);
        }
        catch (IOException exception) {
            throw new WrappedException((Exception)exception);
        }
        this.initializeFromLoadedEPackage(this, (EPackage)resource.getContents().get(0));
        this.createResource("http://www.etas.com/ascet/amd/620/component_specification");
    }

    public void fixPackageContents() {
        if (this.isFixed) {
            return;
        }
        this.isFixed = true;
        this.fixEClassifiers();
    }

    protected void fixInstanceClass(EClassifier eClassifier) {
        if (eClassifier.getInstanceClassName() == null) {
            eClassifier.setInstanceClassName("com.etas.amd620.core.ComponentSpecification." + eClassifier.getName());
            this.setGeneratedClassName(eClassifier);
        }
    }
}

