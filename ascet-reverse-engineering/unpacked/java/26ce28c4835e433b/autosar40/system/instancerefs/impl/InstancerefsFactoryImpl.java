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
package autosar40.system.instancerefs.impl;

import autosar40.system.instancerefs.ComponentInSystemInstanceRef;
import autosar40.system.instancerefs.InstancerefsFactory;
import autosar40.system.instancerefs.InstancerefsPackage;
import autosar40.system.instancerefs.OperationInSystemInstanceRef;
import autosar40.system.instancerefs.PortGroupInSystemInstanceRef;
import autosar40.system.instancerefs.VariableDataPrototypeInSystemInstanceRef;
import autosar40.system.instancerefs.impl.ComponentInSystemInstanceRefImpl;
import autosar40.system.instancerefs.impl.OperationInSystemInstanceRefImpl;
import autosar40.system.instancerefs.impl.PortGroupInSystemInstanceRefImpl;
import autosar40.system.instancerefs.impl.VariableDataPrototypeInSystemInstanceRefImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InstancerefsFactoryImpl
extends EFactoryImpl
implements InstancerefsFactory {
    public static InstancerefsFactory init() {
        try {
            InstancerefsFactory theInstancerefsFactory = (InstancerefsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/ir");
            if (theInstancerefsFactory != null) {
                return theInstancerefsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InstancerefsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createOperationInSystemInstanceRef();
            }
            case 1: {
                return this.createPortGroupInSystemInstanceRef();
            }
            case 2: {
                return this.createVariableDataPrototypeInSystemInstanceRef();
            }
            case 3: {
                return this.createComponentInSystemInstanceRef();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public OperationInSystemInstanceRef createOperationInSystemInstanceRef() {
        OperationInSystemInstanceRefImpl operationInSystemInstanceRef = new OperationInSystemInstanceRefImpl();
        return operationInSystemInstanceRef;
    }

    public PortGroupInSystemInstanceRef createPortGroupInSystemInstanceRef() {
        PortGroupInSystemInstanceRefImpl portGroupInSystemInstanceRef = new PortGroupInSystemInstanceRefImpl();
        return portGroupInSystemInstanceRef;
    }

    public VariableDataPrototypeInSystemInstanceRef createVariableDataPrototypeInSystemInstanceRef() {
        VariableDataPrototypeInSystemInstanceRefImpl variableDataPrototypeInSystemInstanceRef = new VariableDataPrototypeInSystemInstanceRefImpl();
        return variableDataPrototypeInSystemInstanceRef;
    }

    public ComponentInSystemInstanceRef createComponentInSystemInstanceRef() {
        ComponentInSystemInstanceRefImpl componentInSystemInstanceRef = new ComponentInSystemInstanceRefImpl();
        return componentInSystemInstanceRef;
    }

    public InstancerefsPackage getInstancerefsPackage() {
        return (InstancerefsPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefsPackage getPackage() {
        return InstancerefsPackage.eINSTANCE;
    }
}

