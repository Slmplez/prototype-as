/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup;

import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.IncludedModeDeclarationGroupSet;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeAccessPoint;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.impl.ModedeclarationgroupFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ModedeclarationgroupFactory
extends EFactory {
    public static final ModedeclarationgroupFactory eINSTANCE = ModedeclarationgroupFactoryImpl.init();

    public IncludedModeDeclarationGroupSet createIncludedModeDeclarationGroupSet();

    public ModeAccessPoint createModeAccessPoint();

    public ModeSwitchPoint createModeSwitchPoint();

    public ModedeclarationgroupPackage getModedeclarationgroupPackage();
}

