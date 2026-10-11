/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.swcomponent.portinterface.DataInterface;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.impl.PortInterfaceImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class DataInterfaceImpl
extends PortInterfaceImpl
implements DataInterface {
    protected DataInterfaceImpl() {
    }

    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.DATA_INTERFACE;
    }
}

