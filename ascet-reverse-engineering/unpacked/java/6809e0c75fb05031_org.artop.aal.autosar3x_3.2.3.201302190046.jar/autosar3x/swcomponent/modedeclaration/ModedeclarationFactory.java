/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.modedeclaration;

import autosar3x.swcomponent.modedeclaration.ModeDeclaration;
import autosar3x.swcomponent.modedeclaration.ModeDeclarationGroup;
import autosar3x.swcomponent.modedeclaration.ModeDisablingDependency;
import autosar3x.swcomponent.modedeclaration.ModedeclarationPackage;
import autosar3x.swcomponent.modedeclaration.impl.ModedeclarationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ModedeclarationFactory
extends EFactory {
    public static final ModedeclarationFactory eINSTANCE = ModedeclarationFactoryImpl.init();

    public ModeDeclaration createModeDeclaration();

    public ModeDisablingDependency createModeDisablingDependency();

    public ModeDeclarationGroup createModeDeclarationGroup();

    public ModedeclarationPackage getModedeclarationPackage();
}

