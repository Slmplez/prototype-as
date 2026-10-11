/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcinternalbehavior.runnableentity;

import autosar40.swcomponent.swcinternalbehavior.runnableentity.RunnableentityFactory;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.impl.RunnableentityPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface RunnableentityPackage
extends EPackage {
    public static final String eNAME = "runnableentity";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib/re";
    public static final String eNS_PREFIX = "";
    public static final RunnableentityPackage eINSTANCE = RunnableentityPackageImpl.init();
    public static final int RUNNABLE_ENTITY_ARGUMENT = 0;
    public static final int RUNNABLE_ENTITY_ARGUMENT__GCHECKSUM = 0;
    public static final int RUNNABLE_ENTITY_ARGUMENT__GTIMESTAMP = 1;
    public static final int RUNNABLE_ENTITY_ARGUMENT__CHECKSUM = 2;
    public static final int RUNNABLE_ENTITY_ARGUMENT__TIMESTAMP = 3;
    public static final int RUNNABLE_ENTITY_ARGUMENT__RUNNABLE_ENTITY = 4;
    public static final int RUNNABLE_ENTITY_ARGUMENT__SYMBOL = 5;
    public static final int RUNNABLE_ENTITY_ARGUMENT_FEATURE_COUNT = 6;

    public EClass getRunnableEntityArgument();

    public EReference getRunnableEntityArgument_RunnableEntity();

    public EAttribute getRunnableEntityArgument_Symbol();

    public RunnableentityFactory getRunnableentityFactory();

    public static interface Literals {
        public static final EClass RUNNABLE_ENTITY_ARGUMENT = eINSTANCE.getRunnableEntityArgument();
        public static final EReference RUNNABLE_ENTITY_ARGUMENT__RUNNABLE_ENTITY = eINSTANCE.getRunnableEntityArgument_RunnableEntity();
        public static final EAttribute RUNNABLE_ENTITY_ARGUMENT__SYMBOL = eINSTANCE.getRunnableEntityArgument_Symbol();
    }
}

