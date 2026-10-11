/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup;

import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.impl.ModedeclarationgroupFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ModedeclarationgroupFactory
extends EFactory {
    public static final ModedeclarationgroupFactory eINSTANCE = ModedeclarationgroupFactoryImpl.init();

    public ModeSwitchPoint createModeSwitchPoint();

    public ModedeclarationgroupPackage getModedeclarationgroupPackage();
}

