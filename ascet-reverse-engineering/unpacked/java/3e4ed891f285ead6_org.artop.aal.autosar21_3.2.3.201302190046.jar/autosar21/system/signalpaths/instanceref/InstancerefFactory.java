/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.signalpaths.instanceref;

import autosar21.system.signalpaths.instanceref.ForbiddenSignalPathEcuCommunicationPort;
import autosar21.system.signalpaths.instanceref.InstancerefPackage;
import autosar21.system.signalpaths.instanceref.PermissibleSignalPathEcuCommunicationPort;
import autosar21.system.signalpaths.instanceref.SwcToSwcOperationArgumentsOperation;
import autosar21.system.signalpaths.instanceref.SwcToSwcSignalDataElement;
import autosar21.system.signalpaths.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public ForbiddenSignalPathEcuCommunicationPort createForbiddenSignalPathEcuCommunicationPort();

    public PermissibleSignalPathEcuCommunicationPort createPermissibleSignalPathEcuCommunicationPort();

    public SwcToSwcOperationArgumentsOperation createSwcToSwcOperationArgumentsOperation();

    public SwcToSwcSignalDataElement createSwcToSwcSignalDataElement();

    public InstancerefPackage getInstancerefPackage();
}

