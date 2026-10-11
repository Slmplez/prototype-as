/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.modedeclaration;

import autosar21.swcomponent.modedeclaration.ModeDeclaration;
import autosar21.swcomponent.modedeclaration.ModeDeclarationGroup;
import autosar21.swcomponent.modedeclaration.ModeDisablingDependency;
import autosar21.swcomponent.modedeclaration.ModedeclarationPackage;
import autosar21.swcomponent.modedeclaration.impl.ModedeclarationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ModedeclarationFactory
extends EFactory {
    public static final ModedeclarationFactory eINSTANCE = ModedeclarationFactoryImpl.init();

    public ModeDeclaration createModeDeclaration();

    public ModeDisablingDependency createModeDisablingDependency();

    public ModeDeclarationGroup createModeDeclarationGroup();

    public ModedeclarationPackage getModedeclarationPackage();
}

