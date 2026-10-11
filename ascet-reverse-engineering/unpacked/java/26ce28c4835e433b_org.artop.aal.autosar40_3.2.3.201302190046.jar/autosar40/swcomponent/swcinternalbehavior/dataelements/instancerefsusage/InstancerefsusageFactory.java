/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage;

import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusagePackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.ParameterInAtomicSWCTypeInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.VariableInAtomicSWCTypeInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.impl.InstancerefsusageFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefsusageFactory
extends EFactory {
    public static final InstancerefsusageFactory eINSTANCE = InstancerefsusageFactoryImpl.init();

    public VariableInAtomicSWCTypeInstanceRef createVariableInAtomicSWCTypeInstanceRef();

    public ParameterInAtomicSWCTypeInstanceRef createParameterInAtomicSWCTypeInstanceRef();

    public InstancerefsusagePackage getInstancerefsusagePackage();
}

