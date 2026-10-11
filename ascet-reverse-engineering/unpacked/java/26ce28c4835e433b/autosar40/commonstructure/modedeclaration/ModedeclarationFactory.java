/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.modedeclaration;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeMapping;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeRefConditional;
import autosar40.commonstructure.modedeclaration.ModeRequestTypeMap;
import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;
import autosar40.commonstructure.modedeclaration.impl.ModedeclarationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ModedeclarationFactory
extends EFactory {
    public static final ModedeclarationFactory eINSTANCE = ModedeclarationFactoryImpl.init();

    public ModeDeclaration createModeDeclaration();

    public ModeDeclarationGroup createModeDeclarationGroup();

    public ModeDeclarationGroupPrototype createModeDeclarationGroupPrototype();

    public ModeDeclarationGroupPrototypeMapping createModeDeclarationGroupPrototypeMapping();

    public ModeDeclarationGroupPrototypeRefConditional createModeDeclarationGroupPrototypeRefConditional();

    public ModeRequestTypeMap createModeRequestTypeMap();

    public ModedeclarationPackage getModedeclarationPackage();
}

