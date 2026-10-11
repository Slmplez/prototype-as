/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.modedeclarationgroup;

import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.impl.ModedeclarationgroupFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ModedeclarationgroupFactory
extends EFactory {
    public static final ModedeclarationgroupFactory eINSTANCE = ModedeclarationgroupFactoryImpl.init();

    public ModeSwitchPoint createModeSwitchPoint();

    public ModedeclarationgroupPackage getModedeclarationgroupPackage();
}

