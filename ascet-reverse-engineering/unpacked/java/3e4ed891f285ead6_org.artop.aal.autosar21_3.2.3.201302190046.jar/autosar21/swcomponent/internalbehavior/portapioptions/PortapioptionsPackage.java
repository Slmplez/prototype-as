/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.internalbehavior.portapioptions;

import autosar21.swcomponent.internalbehavior.portapioptions.PortapioptionsFactory;
import autosar21.swcomponent.internalbehavior.portapioptions.impl.PortapioptionsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface PortapioptionsPackage
extends EPackage {
    public static final String eNAME = "portapioptions";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/ib/papio";
    public static final String eNS_PREFIX = "";
    public static final PortapioptionsPackage eINSTANCE = PortapioptionsPackageImpl.init();
    public static final int PORT_API_OPTION = 0;
    public static final int PORT_API_OPTION__GCHECKSUM = 0;
    public static final int PORT_API_OPTION__GTIMESTAMP = 1;
    public static final int PORT_API_OPTION__CHECKSUM = 2;
    public static final int PORT_API_OPTION__TIMESTAMP = 3;
    public static final int PORT_API_OPTION__INTERNAL_BEHAVIOR = 4;
    public static final int PORT_API_OPTION__INDIRECT_API = 5;
    public static final int PORT_API_OPTION__PORT_ARG_VALUES = 6;
    public static final int PORT_API_OPTION__PORT = 7;
    public static final int PORT_API_OPTION_FEATURE_COUNT = 8;

    public EClass getPortAPIOption();

    public EReference getPortAPIOption_InternalBehavior();

    public EAttribute getPortAPIOption_IndirectAPI();

    public EReference getPortAPIOption_PortArgValues();

    public EReference getPortAPIOption_Port();

    public PortapioptionsFactory getPortapioptionsFactory();

    public static interface Literals {
        public static final EClass PORT_API_OPTION = eINSTANCE.getPortAPIOption();
        public static final EReference PORT_API_OPTION__INTERNAL_BEHAVIOR = eINSTANCE.getPortAPIOption_InternalBehavior();
        public static final EAttribute PORT_API_OPTION__INDIRECT_API = eINSTANCE.getPortAPIOption_IndirectAPI();
        public static final EReference PORT_API_OPTION__PORT_ARG_VALUES = eINSTANCE.getPortAPIOption_PortArgValues();
        public static final EReference PORT_API_OPTION__PORT = eINSTANCE.getPortAPIOption_Port();
    }
}

