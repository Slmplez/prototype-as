/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.components.instanceref;

import autosar3x.swcomponent.components.instanceref.InstancerefPackage;
import autosar3x.swcomponent.components.instanceref.PortGroupInnerGroup;
import autosar3x.swcomponent.components.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public PortGroupInnerGroup createPortGroupInnerGroup();

    public InstancerefPackage getInstancerefPackage();
}

