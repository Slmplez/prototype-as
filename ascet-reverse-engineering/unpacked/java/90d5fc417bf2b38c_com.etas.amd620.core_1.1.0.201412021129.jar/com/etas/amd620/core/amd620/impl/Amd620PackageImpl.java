/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EOperation
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package com.etas.amd620.core.amd620.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.impl.ComponentDataPackageImpl;
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
import com.etas.amd620.core.amd620.Amd620Factory;
import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.AscetClass;
import com.etas.amd620.core.amd620.AscetComponent;
import com.etas.amd620.core.amd620.AscetComponentType;
import com.etas.amd620.core.amd620.AscetInterface;
import com.etas.amd620.core.amd620.AscetProject;
import com.etas.amd620.core.amd620.DefaultConfiguration;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.w3._2000._09.xmldsig.XmldsigPackage;
import org.w3._2000._09.xmldsig.impl.XmldsigPackageImpl;

public class Amd620PackageImpl
extends EPackageImpl
implements Amd620Package {
    private EClass ascetComponentEClass = null;
    private EClass ascetClassEClass = null;
    private EClass ascetProjectEClass = null;
    private EClass defaultConfigurationEClass = null;
    private EClass ascetInterfaceEClass = null;
    private EEnum ascetComponentTypeEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private Amd620PackageImpl() {
        super("http://www.etas.com/ascet/amd/620/amd620", (EFactory)Amd620Factory.eINSTANCE);
    }

    public static Amd620Package init() {
        if (isInited) {
            return (Amd620Package)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620");
        }
        Amd620PackageImpl theAmd620Package = (Amd620PackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/amd620") instanceof Amd620PackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/amd620") : new Amd620PackageImpl());
        isInited = true;
        ComponentMainPackageImpl theComponentMainPackage = (ComponentMainPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") instanceof ComponentMainPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") : ComponentMainPackage.eINSTANCE);
        ComponentDataPackageImpl theComponentDataPackage = (ComponentDataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") instanceof ComponentDataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") : ComponentDataPackage.eINSTANCE);
        ComponentImplementationPackageImpl theComponentImplementationPackage = (ComponentImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") instanceof ComponentImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") : ComponentImplementationPackage.eINSTANCE);
        ComponentSpecificationPackageImpl theComponentSpecificationPackage = (ComponentSpecificationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") instanceof ComponentSpecificationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") : ComponentSpecificationPackage.eINSTANCE);
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
        theAmd620Package.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://www.etas.com/ascet/amd/620/amd620", (Object)theAmd620Package);
        return theAmd620Package;
    }

    @Override
    public EClass getAscetComponent() {
        return this.ascetComponentEClass;
    }

    @Override
    public EReference getAscetComponent_ComponentMainType() {
        return (EReference)this.ascetComponentEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EOperation getAscetComponent__GetName() {
        return (EOperation)this.ascetComponentEClass.getEOperations().get(0);
    }

    @Override
    public EOperation getAscetComponent__GetSchemaVersion() {
        return (EOperation)this.ascetComponentEClass.getEOperations().get(1);
    }

    @Override
    public EOperation getAscetComponent__GetQualifiedName() {
        return (EOperation)this.ascetComponentEClass.getEOperations().get(2);
    }

    @Override
    public EOperation getAscetComponent__GetType() {
        return (EOperation)this.ascetComponentEClass.getEOperations().get(3);
    }

    @Override
    public EClass getAscetClass() {
        return this.ascetClassEClass;
    }

    @Override
    public EReference getAscetClass_ComponentDataType() {
        return (EReference)this.ascetClassEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getAscetClass_ComponentImplementationType() {
        return (EReference)this.ascetClassEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getAscetClass_SpecificationsType() {
        return (EReference)this.ascetClassEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getAscetClass_DefaultConfiguration() {
        return (EReference)this.ascetClassEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getAscetProject() {
        return this.ascetProjectEClass;
    }

    @Override
    public EReference getAscetProject_ProjectType() {
        return (EReference)this.ascetProjectEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getAscetProject_ImplementationsType() {
        return (EReference)this.ascetProjectEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getAscetProject_FormulasType() {
        return (EReference)this.ascetProjectEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getDefaultConfiguration() {
        return this.defaultConfigurationEClass;
    }

    @Override
    public EReference getDefaultConfiguration_ComponentMainType() {
        return (EReference)this.defaultConfigurationEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getDefaultConfiguration_ComponentDataType() {
        return (EReference)this.defaultConfigurationEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getDefaultConfiguration_ComponentImplementationType() {
        return (EReference)this.defaultConfigurationEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getDefaultConfiguration_SpecificationsType() {
        return (EReference)this.defaultConfigurationEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getDefaultConfiguration_ProjectType() {
        return (EReference)this.defaultConfigurationEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EReference getDefaultConfiguration_ImplementationsType() {
        return (EReference)this.defaultConfigurationEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EReference getDefaultConfiguration_FormulasType() {
        return (EReference)this.defaultConfigurationEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EClass getAscetInterface() {
        return this.ascetInterfaceEClass;
    }

    @Override
    public EReference getAscetInterface_ComponentDataType() {
        return (EReference)this.ascetInterfaceEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getAscetInterface_ComponentImplementationType() {
        return (EReference)this.ascetInterfaceEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getAscetInterface_DefaultConfiguration() {
        return (EReference)this.ascetInterfaceEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EEnum getAscetComponentType() {
        return this.ascetComponentTypeEEnum;
    }

    @Override
    public Amd620Factory getAmd620Factory() {
        return (Amd620Factory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.ascetComponentEClass = this.createEClass(0);
        this.createEReference(this.ascetComponentEClass, 0);
        this.createEOperation(this.ascetComponentEClass, 0);
        this.createEOperation(this.ascetComponentEClass, 1);
        this.createEOperation(this.ascetComponentEClass, 2);
        this.createEOperation(this.ascetComponentEClass, 3);
        this.ascetClassEClass = this.createEClass(1);
        this.createEReference(this.ascetClassEClass, 1);
        this.createEReference(this.ascetClassEClass, 2);
        this.createEReference(this.ascetClassEClass, 3);
        this.createEReference(this.ascetClassEClass, 4);
        this.ascetProjectEClass = this.createEClass(2);
        this.createEReference(this.ascetProjectEClass, 5);
        this.createEReference(this.ascetProjectEClass, 6);
        this.createEReference(this.ascetProjectEClass, 7);
        this.defaultConfigurationEClass = this.createEClass(3);
        this.createEReference(this.defaultConfigurationEClass, 0);
        this.createEReference(this.defaultConfigurationEClass, 1);
        this.createEReference(this.defaultConfigurationEClass, 2);
        this.createEReference(this.defaultConfigurationEClass, 3);
        this.createEReference(this.defaultConfigurationEClass, 4);
        this.createEReference(this.defaultConfigurationEClass, 5);
        this.createEReference(this.defaultConfigurationEClass, 6);
        this.ascetInterfaceEClass = this.createEClass(4);
        this.createEReference(this.ascetInterfaceEClass, 1);
        this.createEReference(this.ascetInterfaceEClass, 2);
        this.createEReference(this.ascetInterfaceEClass, 3);
        this.ascetComponentTypeEEnum = this.createEEnum(5);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("amd620");
        this.setNsPrefix("amd620");
        this.setNsURI("http://www.etas.com/ascet/amd/620/amd620");
        ComponentMainPackage theComponentMainPackage = (ComponentMainPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main");
        ComponentDataPackage theComponentDataPackage = (ComponentDataPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data");
        ComponentImplementationPackage theComponentImplementationPackage = (ComponentImplementationPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation");
        ComponentSpecificationPackage theComponentSpecificationPackage = (ComponentSpecificationPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification");
        ComponentProjectPackage theComponentProjectPackage = (ComponentProjectPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project");
        ImplementationtypesPackage theImplementationtypesPackage = (ImplementationtypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes");
        FormulasPackage theFormulasPackage = (FormulasPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas");
        this.ascetClassEClass.getESuperTypes().add((Object)this.getAscetComponent());
        this.ascetProjectEClass.getESuperTypes().add((Object)this.getAscetClass());
        this.ascetInterfaceEClass.getESuperTypes().add((Object)this.getAscetComponent());
        this.initEClass(this.ascetComponentEClass, AscetComponent.class, "AscetComponent", false, false, true);
        this.initEReference(this.getAscetComponent_ComponentMainType(), (EClassifier)theComponentMainPackage.getComponentMainType(), null, "componentMainType", null, 0, 1, AscetComponent.class, false, false, true, true, false, false, true, false, true);
        this.initEOperation(this.getAscetComponent__GetName(), (EClassifier)this.ecorePackage.getEString(), "getName", 0, 1, true, true);
        this.initEOperation(this.getAscetComponent__GetSchemaVersion(), (EClassifier)this.ecorePackage.getEString(), "getSchemaVersion", 0, 1, true, true);
        this.initEOperation(this.getAscetComponent__GetQualifiedName(), (EClassifier)this.ecorePackage.getEString(), "getQualifiedName", 0, 1, true, true);
        this.initEOperation(this.getAscetComponent__GetType(), (EClassifier)this.getAscetComponentType(), "getType", 0, 1, true, true);
        this.initEClass(this.ascetClassEClass, AscetClass.class, "AscetClass", false, false, true);
        this.initEReference(this.getAscetClass_ComponentDataType(), (EClassifier)theComponentDataPackage.getComponentDataType(), null, "componentDataType", null, 0, 1, AscetClass.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getAscetClass_ComponentImplementationType(), (EClassifier)theComponentImplementationPackage.getComponentImplementationType(), null, "componentImplementationType", null, 0, 1, AscetClass.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getAscetClass_SpecificationsType(), (EClassifier)theComponentSpecificationPackage.getSpecificationsType(), null, "specificationsType", null, 0, 1, AscetClass.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getAscetClass_DefaultConfiguration(), (EClassifier)this.getDefaultConfiguration(), null, "defaultConfiguration", null, 0, 1, AscetClass.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.ascetProjectEClass, AscetProject.class, "AscetProject", false, false, true);
        this.initEReference(this.getAscetProject_ProjectType(), (EClassifier)theComponentProjectPackage.getProjectType(), null, "projectType", null, 0, 1, AscetProject.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getAscetProject_ImplementationsType(), (EClassifier)theImplementationtypesPackage.getImplementationTypesType(), null, "implementationsType", null, 0, 1, AscetProject.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getAscetProject_FormulasType(), (EClassifier)theFormulasPackage.getFormulasType(), null, "formulasType", null, 0, 1, AscetProject.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.defaultConfigurationEClass, DefaultConfiguration.class, "DefaultConfiguration", false, false, true);
        this.initEReference(this.getDefaultConfiguration_ComponentMainType(), (EClassifier)theComponentMainPackage.getComponentMainType(), null, "componentMainType", null, 0, 1, DefaultConfiguration.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDefaultConfiguration_ComponentDataType(), (EClassifier)theComponentDataPackage.getComponentDataType(), null, "componentDataType", null, 0, 1, DefaultConfiguration.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDefaultConfiguration_ComponentImplementationType(), (EClassifier)theComponentImplementationPackage.getComponentImplementationType(), null, "componentImplementationType", null, 0, 1, DefaultConfiguration.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDefaultConfiguration_SpecificationsType(), (EClassifier)theComponentSpecificationPackage.getSpecificationsType(), null, "specificationsType", null, 0, 1, DefaultConfiguration.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDefaultConfiguration_ProjectType(), (EClassifier)theComponentProjectPackage.getProjectType(), null, "projectType", null, 0, 1, DefaultConfiguration.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDefaultConfiguration_ImplementationsType(), (EClassifier)theImplementationtypesPackage.getImplementationTypesType(), null, "implementationsType", null, 0, 1, DefaultConfiguration.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDefaultConfiguration_FormulasType(), (EClassifier)theFormulasPackage.getFormulasType(), null, "formulasType", null, 0, 1, DefaultConfiguration.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.ascetInterfaceEClass, AscetInterface.class, "AscetInterface", false, false, true);
        this.initEReference(this.getAscetInterface_ComponentDataType(), (EClassifier)theComponentDataPackage.getComponentDataType(), null, "componentDataType", null, 0, 1, AscetInterface.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getAscetInterface_ComponentImplementationType(), (EClassifier)theComponentImplementationPackage.getComponentImplementationType(), null, "componentImplementationType", null, 0, 1, AscetInterface.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getAscetInterface_DefaultConfiguration(), (EClassifier)this.getDefaultConfiguration(), null, "defaultConfiguration", null, 0, 1, AscetInterface.class, false, false, true, true, false, false, true, false, true);
        this.initEEnum(this.ascetComponentTypeEEnum, AscetComponentType.class, "AscetComponentType");
        this.addEEnumLiteral(this.ascetComponentTypeEEnum, AscetComponentType.CLASS_BD);
        this.addEEnumLiteral(this.ascetComponentTypeEEnum, AscetComponentType.CLASS_ESDL);
        this.addEEnumLiteral(this.ascetComponentTypeEEnum, AscetComponentType.CLASS_CCODE);
        this.addEEnumLiteral(this.ascetComponentTypeEEnum, AscetComponentType.CLASS_STATEMACHINE);
        this.addEEnumLiteral(this.ascetComponentTypeEEnum, AscetComponentType.MODULE_BD);
        this.addEEnumLiteral(this.ascetComponentTypeEEnum, AscetComponentType.MODULE_ESDL);
        this.addEEnumLiteral(this.ascetComponentTypeEEnum, AscetComponentType.MODULE_CCODE);
        this.addEEnumLiteral(this.ascetComponentTypeEEnum, AscetComponentType.PROJECT);
        this.addEEnumLiteral(this.ascetComponentTypeEEnum, AscetComponentType.ENUM);
        this.addEEnumLiteral(this.ascetComponentTypeEEnum, AscetComponentType.CONTAINER);
        this.addEEnumLiteral(this.ascetComponentTypeEEnum, AscetComponentType.UNKNOWN);
        this.addEEnumLiteral(this.ascetComponentTypeEEnum, AscetComponentType.RECORD);
        this.createResource("http://www.etas.com/ascet/amd/620/amd620");
    }
}

