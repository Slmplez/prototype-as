/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.commonstructure.flatmap.impl;

import autosar40.commonstructure.flatmap.AliasNameAssignment;
import autosar40.commonstructure.flatmap.AliasNameSet;
import autosar40.commonstructure.flatmap.FlatInstanceDescriptor;
import autosar40.commonstructure.flatmap.FlatMap;
import autosar40.commonstructure.flatmap.FlatmapFactory;
import autosar40.commonstructure.flatmap.FlatmapPackage;
import autosar40.commonstructure.flatmap.impl.AliasNameAssignmentImpl;
import autosar40.commonstructure.flatmap.impl.AliasNameSetImpl;
import autosar40.commonstructure.flatmap.impl.FlatInstanceDescriptorImpl;
import autosar40.commonstructure.flatmap.impl.FlatMapImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class FlatmapFactoryImpl
extends EFactoryImpl
implements FlatmapFactory {
    public static FlatmapFactory init() {
        try {
            FlatmapFactory theFlatmapFactory = (FlatmapFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/fm");
            if (theFlatmapFactory != null) {
                return theFlatmapFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new FlatmapFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAliasNameAssignment();
            }
            case 1: {
                return this.createFlatInstanceDescriptor();
            }
            case 2: {
                return this.createFlatMap();
            }
            case 3: {
                return this.createAliasNameSet();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AliasNameAssignment createAliasNameAssignment() {
        AliasNameAssignmentImpl aliasNameAssignment = new AliasNameAssignmentImpl();
        return aliasNameAssignment;
    }

    public FlatInstanceDescriptor createFlatInstanceDescriptor() {
        FlatInstanceDescriptorImpl flatInstanceDescriptor = new FlatInstanceDescriptorImpl();
        return flatInstanceDescriptor;
    }

    public FlatMap createFlatMap() {
        FlatMapImpl flatMap = new FlatMapImpl();
        return flatMap;
    }

    public AliasNameSet createAliasNameSet() {
        AliasNameSetImpl aliasNameSet = new AliasNameSetImpl();
        return aliasNameSet;
    }

    public FlatmapPackage getFlatmapPackage() {
        return (FlatmapPackage)this.getEPackage();
    }

    @Deprecated
    public static FlatmapPackage getPackage() {
        return FlatmapPackage.eINSTANCE;
    }
}

