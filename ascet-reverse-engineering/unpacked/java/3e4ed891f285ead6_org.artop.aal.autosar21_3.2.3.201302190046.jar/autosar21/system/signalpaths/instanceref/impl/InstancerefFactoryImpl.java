/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar21.system.signalpaths.instanceref.impl;

import autosar21.system.signalpaths.instanceref.ForbiddenSignalPathEcuCommunicationPort;
import autosar21.system.signalpaths.instanceref.InstancerefFactory;
import autosar21.system.signalpaths.instanceref.InstancerefPackage;
import autosar21.system.signalpaths.instanceref.PermissibleSignalPathEcuCommunicationPort;
import autosar21.system.signalpaths.instanceref.SwcToSwcOperationArgumentsOperation;
import autosar21.system.signalpaths.instanceref.SwcToSwcSignalDataElement;
import autosar21.system.signalpaths.instanceref.impl.ForbiddenSignalPathEcuCommunicationPortImpl;
import autosar21.system.signalpaths.instanceref.impl.PermissibleSignalPathEcuCommunicationPortImpl;
import autosar21.system.signalpaths.instanceref.impl.SwcToSwcOperationArgumentsOperationImpl;
import autosar21.system.signalpaths.instanceref.impl.SwcToSwcSignalDataElementImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InstancerefFactoryImpl
extends EFactoryImpl
implements InstancerefFactory {
    public static InstancerefFactory init() {
        try {
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/sp/r");
            if (theInstancerefFactory != null) {
                return theInstancerefFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InstancerefFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createForbiddenSignalPathEcuCommunicationPort();
            }
            case 1: {
                return this.createPermissibleSignalPathEcuCommunicationPort();
            }
            case 2: {
                return this.createSwcToSwcOperationArgumentsOperation();
            }
            case 3: {
                return this.createSwcToSwcSignalDataElement();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ForbiddenSignalPathEcuCommunicationPort createForbiddenSignalPathEcuCommunicationPort() {
        ForbiddenSignalPathEcuCommunicationPortImpl forbiddenSignalPathEcuCommunicationPort = new ForbiddenSignalPathEcuCommunicationPortImpl();
        return forbiddenSignalPathEcuCommunicationPort;
    }

    public PermissibleSignalPathEcuCommunicationPort createPermissibleSignalPathEcuCommunicationPort() {
        PermissibleSignalPathEcuCommunicationPortImpl permissibleSignalPathEcuCommunicationPort = new PermissibleSignalPathEcuCommunicationPortImpl();
        return permissibleSignalPathEcuCommunicationPort;
    }

    public SwcToSwcOperationArgumentsOperation createSwcToSwcOperationArgumentsOperation() {
        SwcToSwcOperationArgumentsOperationImpl swcToSwcOperationArgumentsOperation = new SwcToSwcOperationArgumentsOperationImpl();
        return swcToSwcOperationArgumentsOperation;
    }

    public SwcToSwcSignalDataElement createSwcToSwcSignalDataElement() {
        SwcToSwcSignalDataElementImpl swcToSwcSignalDataElement = new SwcToSwcSignalDataElementImpl();
        return swcToSwcSignalDataElement;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

