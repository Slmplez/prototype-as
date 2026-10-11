/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.modedeclaration.instanceref;

import autosar3x.swcomponent.modedeclaration.instanceref.InstancerefPackage;
import autosar3x.swcomponent.modedeclaration.instanceref.ModeDisablingDependencyDependentOnMode;
import autosar3x.swcomponent.modedeclaration.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public ModeDisablingDependencyDependentOnMode createModeDisablingDependencyDependentOnMode();

    public InstancerefPackage getInstancerefPackage();
}

