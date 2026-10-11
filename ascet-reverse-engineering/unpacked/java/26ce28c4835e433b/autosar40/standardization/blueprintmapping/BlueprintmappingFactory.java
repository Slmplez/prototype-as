/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.standardization.blueprintmapping;

import autosar40.standardization.blueprintmapping.BlueprintMappingSet;
import autosar40.standardization.blueprintmapping.BlueprintmappingPackage;
import autosar40.standardization.blueprintmapping.impl.BlueprintmappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BlueprintmappingFactory
extends EFactory {
    public static final BlueprintmappingFactory eINSTANCE = BlueprintmappingFactoryImpl.init();

    public BlueprintMappingSet createBlueprintMappingSet();

    public BlueprintmappingPackage getBlueprintmappingPackage();
}

