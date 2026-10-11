/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EOperation
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package com.etas.amd620.core.amd620;

import com.etas.amd620.core.amd620.Amd620Factory;
import com.etas.amd620.core.amd620.impl.Amd620PackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface Amd620Package
extends EPackage {
    public static final String eNAME = "amd620";
    public static final String eNS_URI = "http://www.etas.com/ascet/amd/620/amd620";
    public static final String eNS_PREFIX = "amd620";
    public static final Amd620Package eINSTANCE = Amd620PackageImpl.init();
    public static final int ASCET_COMPONENT = 0;
    public static final int ASCET_COMPONENT__COMPONENT_MAIN_TYPE = 0;
    public static final int ASCET_COMPONENT_FEATURE_COUNT = 1;
    public static final int ASCET_COMPONENT___GET_NAME = 0;
    public static final int ASCET_COMPONENT___GET_SCHEMA_VERSION = 1;
    public static final int ASCET_COMPONENT___GET_QUALIFIED_NAME = 2;
    public static final int ASCET_COMPONENT___GET_TYPE = 3;
    public static final int ASCET_COMPONENT_OPERATION_COUNT = 4;
    public static final int ASCET_CLASS = 1;
    public static final int ASCET_CLASS__COMPONENT_MAIN_TYPE = 0;
    public static final int ASCET_CLASS__COMPONENT_DATA_TYPE = 1;
    public static final int ASCET_CLASS__COMPONENT_IMPLEMENTATION_TYPE = 2;
    public static final int ASCET_CLASS__SPECIFICATIONS_TYPE = 3;
    public static final int ASCET_CLASS__DEFAULT_CONFIGURATION = 4;
    public static final int ASCET_CLASS_FEATURE_COUNT = 5;
    public static final int ASCET_CLASS___GET_NAME = 0;
    public static final int ASCET_CLASS___GET_SCHEMA_VERSION = 1;
    public static final int ASCET_CLASS___GET_QUALIFIED_NAME = 2;
    public static final int ASCET_CLASS___GET_TYPE = 3;
    public static final int ASCET_CLASS_OPERATION_COUNT = 4;
    public static final int ASCET_PROJECT = 2;
    public static final int ASCET_PROJECT__COMPONENT_MAIN_TYPE = 0;
    public static final int ASCET_PROJECT__COMPONENT_DATA_TYPE = 1;
    public static final int ASCET_PROJECT__COMPONENT_IMPLEMENTATION_TYPE = 2;
    public static final int ASCET_PROJECT__SPECIFICATIONS_TYPE = 3;
    public static final int ASCET_PROJECT__DEFAULT_CONFIGURATION = 4;
    public static final int ASCET_PROJECT__PROJECT_TYPE = 5;
    public static final int ASCET_PROJECT__IMPLEMENTATIONS_TYPE = 6;
    public static final int ASCET_PROJECT__FORMULAS_TYPE = 7;
    public static final int ASCET_PROJECT_FEATURE_COUNT = 8;
    public static final int ASCET_PROJECT___GET_NAME = 0;
    public static final int ASCET_PROJECT___GET_SCHEMA_VERSION = 1;
    public static final int ASCET_PROJECT___GET_QUALIFIED_NAME = 2;
    public static final int ASCET_PROJECT___GET_TYPE = 3;
    public static final int ASCET_PROJECT_OPERATION_COUNT = 4;
    public static final int DEFAULT_CONFIGURATION = 3;
    public static final int DEFAULT_CONFIGURATION__COMPONENT_MAIN_TYPE = 0;
    public static final int DEFAULT_CONFIGURATION__COMPONENT_DATA_TYPE = 1;
    public static final int DEFAULT_CONFIGURATION__COMPONENT_IMPLEMENTATION_TYPE = 2;
    public static final int DEFAULT_CONFIGURATION__SPECIFICATIONS_TYPE = 3;
    public static final int DEFAULT_CONFIGURATION__PROJECT_TYPE = 4;
    public static final int DEFAULT_CONFIGURATION__IMPLEMENTATIONS_TYPE = 5;
    public static final int DEFAULT_CONFIGURATION__FORMULAS_TYPE = 6;
    public static final int DEFAULT_CONFIGURATION_FEATURE_COUNT = 7;
    public static final int DEFAULT_CONFIGURATION_OPERATION_COUNT = 0;
    public static final int ASCET_INTERFACE = 4;
    public static final int ASCET_INTERFACE__COMPONENT_MAIN_TYPE = 0;
    public static final int ASCET_INTERFACE__COMPONENT_DATA_TYPE = 1;
    public static final int ASCET_INTERFACE__COMPONENT_IMPLEMENTATION_TYPE = 2;
    public static final int ASCET_INTERFACE__DEFAULT_CONFIGURATION = 3;
    public static final int ASCET_INTERFACE_FEATURE_COUNT = 4;
    public static final int ASCET_INTERFACE___GET_NAME = 0;
    public static final int ASCET_INTERFACE___GET_SCHEMA_VERSION = 1;
    public static final int ASCET_INTERFACE___GET_QUALIFIED_NAME = 2;
    public static final int ASCET_INTERFACE___GET_TYPE = 3;
    public static final int ASCET_INTERFACE_OPERATION_COUNT = 4;
    public static final int ASCET_COMPONENT_TYPE = 5;

    public EClass getAscetComponent();

    public EReference getAscetComponent_ComponentMainType();

    public EOperation getAscetComponent__GetName();

    public EOperation getAscetComponent__GetSchemaVersion();

    public EOperation getAscetComponent__GetQualifiedName();

    public EOperation getAscetComponent__GetType();

    public EClass getAscetClass();

    public EReference getAscetClass_ComponentDataType();

    public EReference getAscetClass_ComponentImplementationType();

    public EReference getAscetClass_SpecificationsType();

    public EReference getAscetClass_DefaultConfiguration();

    public EClass getAscetProject();

    public EReference getAscetProject_ProjectType();

    public EReference getAscetProject_ImplementationsType();

    public EReference getAscetProject_FormulasType();

    public EClass getDefaultConfiguration();

    public EReference getDefaultConfiguration_ComponentMainType();

    public EReference getDefaultConfiguration_ComponentDataType();

    public EReference getDefaultConfiguration_ComponentImplementationType();

    public EReference getDefaultConfiguration_SpecificationsType();

    public EReference getDefaultConfiguration_ProjectType();

    public EReference getDefaultConfiguration_ImplementationsType();

    public EReference getDefaultConfiguration_FormulasType();

    public EClass getAscetInterface();

    public EReference getAscetInterface_ComponentDataType();

    public EReference getAscetInterface_ComponentImplementationType();

    public EReference getAscetInterface_DefaultConfiguration();

    public EEnum getAscetComponentType();

    public Amd620Factory getAmd620Factory();

    public static interface Literals {
        public static final EClass ASCET_COMPONENT = eINSTANCE.getAscetComponent();
        public static final EReference ASCET_COMPONENT__COMPONENT_MAIN_TYPE = eINSTANCE.getAscetComponent_ComponentMainType();
        public static final EOperation ASCET_COMPONENT___GET_NAME = eINSTANCE.getAscetComponent__GetName();
        public static final EOperation ASCET_COMPONENT___GET_SCHEMA_VERSION = eINSTANCE.getAscetComponent__GetSchemaVersion();
        public static final EOperation ASCET_COMPONENT___GET_QUALIFIED_NAME = eINSTANCE.getAscetComponent__GetQualifiedName();
        public static final EOperation ASCET_COMPONENT___GET_TYPE = eINSTANCE.getAscetComponent__GetType();
        public static final EClass ASCET_CLASS = eINSTANCE.getAscetClass();
        public static final EReference ASCET_CLASS__COMPONENT_DATA_TYPE = eINSTANCE.getAscetClass_ComponentDataType();
        public static final EReference ASCET_CLASS__COMPONENT_IMPLEMENTATION_TYPE = eINSTANCE.getAscetClass_ComponentImplementationType();
        public static final EReference ASCET_CLASS__SPECIFICATIONS_TYPE = eINSTANCE.getAscetClass_SpecificationsType();
        public static final EReference ASCET_CLASS__DEFAULT_CONFIGURATION = eINSTANCE.getAscetClass_DefaultConfiguration();
        public static final EClass ASCET_PROJECT = eINSTANCE.getAscetProject();
        public static final EReference ASCET_PROJECT__PROJECT_TYPE = eINSTANCE.getAscetProject_ProjectType();
        public static final EReference ASCET_PROJECT__IMPLEMENTATIONS_TYPE = eINSTANCE.getAscetProject_ImplementationsType();
        public static final EReference ASCET_PROJECT__FORMULAS_TYPE = eINSTANCE.getAscetProject_FormulasType();
        public static final EClass DEFAULT_CONFIGURATION = eINSTANCE.getDefaultConfiguration();
        public static final EReference DEFAULT_CONFIGURATION__COMPONENT_MAIN_TYPE = eINSTANCE.getDefaultConfiguration_ComponentMainType();
        public static final EReference DEFAULT_CONFIGURATION__COMPONENT_DATA_TYPE = eINSTANCE.getDefaultConfiguration_ComponentDataType();
        public static final EReference DEFAULT_CONFIGURATION__COMPONENT_IMPLEMENTATION_TYPE = eINSTANCE.getDefaultConfiguration_ComponentImplementationType();
        public static final EReference DEFAULT_CONFIGURATION__SPECIFICATIONS_TYPE = eINSTANCE.getDefaultConfiguration_SpecificationsType();
        public static final EReference DEFAULT_CONFIGURATION__PROJECT_TYPE = eINSTANCE.getDefaultConfiguration_ProjectType();
        public static final EReference DEFAULT_CONFIGURATION__IMPLEMENTATIONS_TYPE = eINSTANCE.getDefaultConfiguration_ImplementationsType();
        public static final EReference DEFAULT_CONFIGURATION__FORMULAS_TYPE = eINSTANCE.getDefaultConfiguration_FormulasType();
        public static final EClass ASCET_INTERFACE = eINSTANCE.getAscetInterface();
        public static final EReference ASCET_INTERFACE__COMPONENT_DATA_TYPE = eINSTANCE.getAscetInterface_ComponentDataType();
        public static final EReference ASCET_INTERFACE__COMPONENT_IMPLEMENTATION_TYPE = eINSTANCE.getAscetInterface_ComponentImplementationType();
        public static final EReference ASCET_INTERFACE__DEFAULT_CONFIGURATION = eINSTANCE.getAscetInterface_DefaultConfiguration();
        public static final EEnum ASCET_COMPONENT_TYPE = eINSTANCE.getAscetComponentType();
    }
}

