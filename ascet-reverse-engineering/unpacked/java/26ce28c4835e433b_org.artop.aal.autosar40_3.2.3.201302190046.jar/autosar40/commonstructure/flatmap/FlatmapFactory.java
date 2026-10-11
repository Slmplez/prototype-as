/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.flatmap;

import autosar40.commonstructure.flatmap.AliasNameAssignment;
import autosar40.commonstructure.flatmap.AliasNameSet;
import autosar40.commonstructure.flatmap.FlatInstanceDescriptor;
import autosar40.commonstructure.flatmap.FlatMap;
import autosar40.commonstructure.flatmap.FlatmapPackage;
import autosar40.commonstructure.flatmap.impl.FlatmapFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FlatmapFactory
extends EFactory {
    public static final FlatmapFactory eINSTANCE = FlatmapFactoryImpl.init();

    public AliasNameAssignment createAliasNameAssignment();

    public FlatInstanceDescriptor createFlatInstanceDescriptor();

    public FlatMap createFlatMap();

    public AliasNameSet createAliasNameSet();

    public FlatmapPackage getFlatmapPackage();
}

