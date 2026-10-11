/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref;

import autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.InstancerefPackage;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.ModeSwitchPointModeGroup;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public ModeSwitchPointModeGroup createModeSwitchPointModeGroup();

    public InstancerefPackage getInstancerefPackage();
}

