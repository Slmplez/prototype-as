/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcinternalbehavior.portapioptions;

import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsFactory;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.impl.PortapioptionsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface PortapioptionsPackage
extends EPackage {
    public static final String eNAME = "portapioptions";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib/papio";
    public static final String eNS_PREFIX = "";
    public static final PortapioptionsPackage eINSTANCE = PortapioptionsPackageImpl.init();
    public static final int PORT_DEFINED_ARGUMENT_VALUE = 0;
    public static final int PORT_DEFINED_ARGUMENT_VALUE__GCHECKSUM = 0;
    public static final int PORT_DEFINED_ARGUMENT_VALUE__GTIMESTAMP = 1;
    public static final int PORT_DEFINED_ARGUMENT_VALUE__CHECKSUM = 2;
    public static final int PORT_DEFINED_ARGUMENT_VALUE__TIMESTAMP = 3;
    public static final int PORT_DEFINED_ARGUMENT_VALUE__PORT_API_OPTION = 4;
    public static final int PORT_DEFINED_ARGUMENT_VALUE__VALUE = 5;
    public static final int PORT_DEFINED_ARGUMENT_VALUE__VALUE_TYPE = 6;
    public static final int PORT_DEFINED_ARGUMENT_VALUE_FEATURE_COUNT = 7;
    public static final int PORT_API_OPTION = 1;
    public static final int PORT_API_OPTION__GCHECKSUM = 0;
    public static final int PORT_API_OPTION__GTIMESTAMP = 1;
    public static final int PORT_API_OPTION__CHECKSUM = 2;
    public static final int PORT_API_OPTION__TIMESTAMP = 3;
    public static final int PORT_API_OPTION__SWC_INTERNAL_BEHAVIOR = 4;
    public static final int PORT_API_OPTION__ENABLE_TAKE_ADDRESS = 5;
    public static final int PORT_API_OPTION__INDIRECT_API = 6;
    public static final int PORT_API_OPTION__PORT_ARG_VALUES = 7;
    public static final int PORT_API_OPTION__PORT = 8;
    public static final int PORT_API_OPTION__VARIATION_POINT = 9;
    public static final int PORT_API_OPTION_FEATURE_COUNT = 10;

    public EClass getPortDefinedArgumentValue();

    public EReference getPortDefinedArgumentValue_PortAPIOption();

    public EReference getPortDefinedArgumentValue_Value();

    public EReference getPortDefinedArgumentValue_ValueType();

    public EClass getPortAPIOption();

    public EReference getPortAPIOption_SwcInternalBehavior();

    public EAttribute getPortAPIOption_EnableTakeAddress();

    public EAttribute getPortAPIOption_IndirectAPI();

    public EReference getPortAPIOption_PortArgValues();

    public EReference getPortAPIOption_Port();

    public EReference getPortAPIOption_VariationPoint();

    public PortapioptionsFactory getPortapioptionsFactory();

    public static interface Literals {
        public static final EClass PORT_DEFINED_ARGUMENT_VALUE = eINSTANCE.getPortDefinedArgumentValue();
        public static final EReference PORT_DEFINED_ARGUMENT_VALUE__PORT_API_OPTION = eINSTANCE.getPortDefinedArgumentValue_PortAPIOption();
        public static final EReference PORT_DEFINED_ARGUMENT_VALUE__VALUE = eINSTANCE.getPortDefinedArgumentValue_Value();
        public static final EReference PORT_DEFINED_ARGUMENT_VALUE__VALUE_TYPE = eINSTANCE.getPortDefinedArgumentValue_ValueType();
        public static final EClass PORT_API_OPTION = eINSTANCE.getPortAPIOption();
        public static final EReference PORT_API_OPTION__SWC_INTERNAL_BEHAVIOR = eINSTANCE.getPortAPIOption_SwcInternalBehavior();
        public static final EAttribute PORT_API_OPTION__ENABLE_TAKE_ADDRESS = eINSTANCE.getPortAPIOption_EnableTakeAddress();
        public static final EAttribute PORT_API_OPTION__INDIRECT_API = eINSTANCE.getPortAPIOption_IndirectAPI();
        public static final EReference PORT_API_OPTION__PORT_ARG_VALUES = eINSTANCE.getPortAPIOption_PortArgValues();
        public static final EReference PORT_API_OPTION__PORT = eINSTANCE.getPortAPIOption_Port();
        public static final EReference PORT_API_OPTION__VARIATION_POINT = eINSTANCE.getPortAPIOption_VariationPoint();
    }
}

