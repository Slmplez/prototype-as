/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.standardization.blueprintdedicated.genericblueprint;

import autosar40.standardization.blueprintdedicated.genericblueprint.BlueprintMapping;
import autosar40.standardization.blueprintdedicated.genericblueprint.GenericblueprintPackage;
import autosar40.standardization.blueprintdedicated.genericblueprint.impl.GenericblueprintFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GenericblueprintFactory
extends EFactory {
    public static final GenericblueprintFactory eINSTANCE = GenericblueprintFactoryImpl.init();

    public BlueprintMapping createBlueprintMapping();

    public GenericblueprintPackage getGenericblueprintPackage();
}

