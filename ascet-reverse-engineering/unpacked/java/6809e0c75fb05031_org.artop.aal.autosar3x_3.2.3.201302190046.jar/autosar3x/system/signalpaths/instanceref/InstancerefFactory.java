/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.signalpaths.instanceref;

import autosar3x.system.signalpaths.instanceref.InstancerefPackage;
import autosar3x.system.signalpaths.instanceref.SwcToSwcOperationArgumentsOperation;
import autosar3x.system.signalpaths.instanceref.SwcToSwcSignalDataElement;
import autosar3x.system.signalpaths.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public SwcToSwcOperationArgumentsOperation createSwcToSwcOperationArgumentsOperation();

    public SwcToSwcSignalDataElement createSwcToSwcSignalDataElement();

    public InstancerefPackage getInstancerefPackage();
}

