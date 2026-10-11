/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.ecucdescription.instanceref;

import autosar3x.ecucdescription.instanceref.InstanceReferenceValueValue;
import autosar3x.ecucdescription.instanceref.InstancerefPackage;
import autosar3x.ecucdescription.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public InstanceReferenceValueValue createInstanceReferenceValueValue();

    public InstancerefPackage getInstancerefPackage();
}

