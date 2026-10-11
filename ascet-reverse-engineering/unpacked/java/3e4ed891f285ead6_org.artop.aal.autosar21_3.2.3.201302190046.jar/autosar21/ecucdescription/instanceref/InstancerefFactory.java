/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.ecucdescription.instanceref;

import autosar21.ecucdescription.instanceref.InstanceReferenceValueValue;
import autosar21.ecucdescription.instanceref.InstancerefPackage;
import autosar21.ecucdescription.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public InstanceReferenceValueValue createInstanceReferenceValueValue();

    public InstancerefPackage getInstancerefPackage();
}

